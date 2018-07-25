import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:mobagym/_redux/redux-mobagym.dart';
import 'package:mobagym/users/data/user.dart';
import 'package:mobagym/users/list/users_list.dart';
import 'package:mobagym/views/loading/error_view.dart';
import 'package:mobagym/views/loading/loading_view.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class UsersListContainer extends StatefulWidget {
  String _params;
  UsersListContainer(this._params);

  @override
  _UsersListContainerState createState() => new _UsersListContainerState(_params);
}

class _UsersListContainerState extends State<UsersListContainer> {
  String _params;
  List<User> loadedUsers = [];
  RefreshController _refreshController;

  _UsersListContainerState(this._params);

  @override
  void initState() {
    super.initState();
    _refreshController = new RefreshController();
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<MobagymAppState,_UsersList>(
      converter: (store){ //this converter function is a copy of [_SocialItemsCardListContainerState]
        var vm = _UsersList();
        vm.refresh = (up) {
          if (up)
            store.dispatch(
                Actions.UserActions.getUsers(_params, forceReload: true));
        };
        var query = store.state.usersState.getQuery(_params);
        if (query == null)
        {
          Future.delayed(const Duration(milliseconds: 300), () {
            store.dispatch(
                Actions.UserActions.getUsers(_params, forceReload: false));
          });
        }
        else
        {
          vm.loading = query.loading;
          vm.error = vm.error;
          vm.users = store.state.usersState.getUsersForQuery(_params);
        }
        print("query != null => ${query != null}");
        print("vm.loading=${vm.loading}");
        print("vm.error=${vm.error}");
        print("vm.users=${vm.users.length}");
        if (loadedUsers.length != 0 && vm.users.length != 0)
          _refreshController.sendBack(true, RefreshStatus.completed);
        if (vm.users.length != 0)
            loadedUsers = vm.users;
        return vm;
      },
      builder: (context,viewModel){
        return Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            appBar: AppBar(),
            body: _body(viewModel),
          ),
        );
      },
    );
  }
  Widget _body(_UsersList viewModel){
    if (loadedUsers.length != 0) {
      return SmartRefresher(
        controller: _refreshController,
        onRefresh: viewModel.refresh,
        enablePullUp: true,
        enablePullDown: true,
        child: UsersList.getList(loadedUsers),
      );
    }
    else if (viewModel.loading)
      return LoadingView.normal();
    else if (viewModel.error != null)
      return ErrorView(error: viewModel.error,);
    else
      return Text("loading=${viewModel.loading} , error=${viewModel.error} , users=${viewModel.users.length}");
  }
}
class _UsersList{
  bool loading = true;
  String error = null;
  List<User> users = [];
  Function refresh;
}
