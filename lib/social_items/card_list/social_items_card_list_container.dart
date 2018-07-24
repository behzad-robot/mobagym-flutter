import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:mobagym/_redux/redux-mobagym.dart';
import 'package:mobagym/social_items/card_list/social_items_card_list.dart';
import 'package:mobagym/social_items/data/social_item.dart';
import 'package:mobagym/views/loading/error_view.dart';
import 'package:mobagym/views/loading/loading_view.dart';

import 'package:pull_to_refresh/pull_to_refresh.dart';

class SocialItemsCardListContainer extends StatefulWidget {
  String _params;
  SocialItemsCardListContainer(this._params);
  @override
  _SocialItemsCardListContainerState createState() => new _SocialItemsCardListContainerState(_params);
}

class _SocialItemsCardListContainerState extends State<SocialItemsCardListContainer> {
  RefreshController _refreshController;
  String _params;
  List<SocialItem> loadedItems = [];
  _SocialItemsCardListContainerState(this._params);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _refreshController = new RefreshController();
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<MobagymAppState,_SocialCardList>(
      converter: (store){

        var vm = _SocialCardList();
        vm.refresh = (up){
          if(up)
            store.dispatch(Actions.SocialActions.getItems(_params,forceReload: true));
        };
        var query = store.state.socialState.getQuery(_params);
        if(query == null)
        {
          Future.delayed(const Duration(milliseconds: 300),(){
            store.dispatch(Actions.SocialActions.getItems(_params,forceReload: false));
          });
        }
        else
        {
          vm.loading = query.loading;
          vm.error = vm.error;
          vm.items = store.state.socialState.getItemsForQuery(_params);
        }
        print("vm.loading=${vm.loading}");
        print("vm.error=${vm.error}");
        print("vm.items=${vm.items.length}");
        if(loadedItems.length != 0 && vm.items.length != 0)
          _refreshController.sendBack(true,RefreshStatus.completed);
        if(vm.items.length != 0)
          loadedItems = vm.items;
        return vm;
      },
      builder: (context,viewModel){
        return Scaffold(
          appBar: AppBar(),
          body: _body(viewModel),
        );
      },
    );
  }
  Widget _body(_SocialCardList viewModel){
    if(loadedItems.length != 0)
    {
      return SmartRefresher(
        controller: _refreshController,
        onRefresh: viewModel.refresh,
        enablePullUp: true,
        enablePullDown: true,
        child: SocialItemsCardList.getList(loadedItems),
      );
    }
    else if(viewModel.loading)
      return LoadingView.normal();
    else if(viewModel.error != null)
      return ErrorView(error: viewModel.error,);
    else
      return Text("loading=${viewModel.loading} , error=${viewModel.error} , items=${viewModel.items.length}");
  }
}

class _SocialCardList{
  String error;
  bool loading = true;
  List<SocialItem> items = [];
  Function refresh;
  Function loadMore;

}