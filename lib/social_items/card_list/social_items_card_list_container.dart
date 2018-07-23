import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:mobagym/_redux/redux-mobagym.dart';
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
      converter: (store) {
        var vm = new _SocialCardList();
        /*var query = store.state.socialState.getQuery(_params);
        if(query == null)
        {
          store.dispatch(Actions.SocialActions.getItems(_params,forceReload: false));
        }
        else
        {
          vm.loading = query.loading;
          vm.error = query.error;
          vm.items = store.state.socialState.getItemsForQuery(_params);
        }
        if(vm.items.length != 0)
          loadedItems = vm.items;*/
        return vm;
      },
      builder: (context,viewModel){
        /*return RefreshIndicator(
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context,index){
                return new Text(index.toString());
              }
              ),
          onRefresh: _refresh,
        );*/
        if(loadedItems.length != 0)
        {
          return SmartRefresher(
            controller: _refreshController,
            onRefresh: _refresh,
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context,index){
                  return new Text(index.toString());
                }
            ),
          );
        }
        else if(viewModel.loading)
          return LoadingView.normal();
        else if(viewModel.error != null)
          return ErrorView(error: viewModel.error,);
      },
    );
  }
  Future<Null> _refresh(up) async{
    await Future.delayed(const Duration(milliseconds:800));
    _refreshController.sendBack(true,RefreshStatus.completed);
    return null;
  }
}

class _SocialCardList{
  String error;
  bool loading;
  List<SocialItem> items = [];
}