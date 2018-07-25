
import 'package:meta/meta.dart';
import 'package:mobagym/_redux/API.dart';
import 'package:mobagym/_redux/redux-mobagym.dart';
import 'package:mobagym/users/data/user.dart';

import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:redux/redux.dart';

part 'redux_users.g.dart';

abstract class UsersState implements Built<UsersState, UsersStateBuilder> {

  UsersState._();
  factory UsersState([updates(UsersStateBuilder b)]) = _$UsersState;


  @nullable User get currentUser;
  BuiltList<UserQuery> get queries;
  BuiltList<User> get users;

  //User getUser(int id)
  UserQuery getQuery(String params)
  {
    for(var i = 0 ; i < queries.length;i++)
      if(queries[i].params == params)
        return queries[i];
    return null;
  }
  int getQueryIndex(String params)
  {
    for(var i = 0 ; i < queries.length;i++)
      if(queries[i].params == params)
        return i;
    return -1;
  }

  User getUser(int id)
  {
    for(var i = 0 ; i < users.length;i++)
      if(users[i].id == id)
        return users[i];
    return null;
  }
  int getItemIndex(int id)
  {
    for(var i = 0 ; i < users.length;i++)
      if(users[i].id == id)
        return i;
    return -1;
  }
  List<User> getUsersForQuery(String params) {
    var query = getQuery(params);
    if(query == null)
      return null;
    var results = List<User>();
    for(var i = 0 ; i < query.ids.length;i++)
      results.add(getUser(query.ids[i]));
    return results;
  }

}
void userMiddleware(Store<MobagymAppState> store, dynamic action, NextDispatcher next)
{
  final state = store.state.usersState;
  if(action is _GetUsers)
  {
    var query = state.getQuery(action.params);
    if(query == null)
    {
      store.dispatch(_CreateQuery(action.params));
      _loadUsersToStore(store,action.params);
    }
    else
    {
      if(!query.loading && action.forceReload)
      {
        store.dispatch(new _ReloadQuery(action.params));
        _loadUsersToStore(store,action.params);
      }
      //other than this do nothing => request is either done and ok :) or has error or is loading!
    }
    return;
  }
  next(action);
}
void _loadUsersToStore(Store<MobagymAppState> store,String params)
{
  print("_loadUsersToStore");
  API.Users.loadUsers(params).then((users){
    store.dispatch(new _UsersLoaded(params,users: users));
  }).catchError((err){
    print("error="+err.toString());
    store.dispatch(new _UsersLoaded(params,error:err.toString()));
  });
}
UsersState usersReducer(UsersState state,dynamic action)
{
  if(action is _SaveCurrentUser)
  {
    var builder  = state.toBuilder();
    builder.currentUser = action.user.toBuilder();
    return builder.build();
  }
  else if(action is _CreateQuery)
  {
    var query = state.getQuery(action.params);
    if(query == null)
    {
      query = UserQuery(action.params,loading: true,error: null);
      var newQueries = state.queries.toBuilder();
      newQueries.add(query);
      state = new UsersState((b)=>b.queries = newQueries);
    }
  }
  else if(action is _ReloadQuery)
  {
    var queryIndex = state.getQueryIndex(action.params);
    if(queryIndex != -1)
    {
      state.queries[queryIndex].loading = true;
      state.queries[queryIndex].error = null;
      state.queries[queryIndex].ids = [];
      state = new UsersState((b)=>b.queries = state.queries.toBuilder());
    }
    //TODO: in reload query case => reload friend queries!
  }
  else if(action is _UsersLoaded)
  {
    if(action.error == null)
    {
      var newQueries = <UserQuery>[]..addAll(state.queries.asList());
      var newUsers = <User>[]..addAll(state.users.asList());
      //add users:
      for(var i = 0; i < action.users.length ; i++){
        var index = state.getItemIndex(action.users[i].id);
        if(index == -1)
          newUsers.add(action.users[i]);
        else
          newUsers[index] = action.users[i];
      }
      print("users updated!");
      //update query:
      if(action.params != null)
      {
        var queryIndex = state.getQueryIndex(action.params);
        if(queryIndex != -1)
        {
          newQueries[queryIndex].error = null;
          newQueries[queryIndex].loading = false;
          for(var i = 0 ; i < action.users.length; i++)
            if(!newQueries[queryIndex].ids.contains(action.users[i].id))
              newQueries[queryIndex].ids.add(action.users[i].id);
          print("query updated => ${newQueries[queryIndex].ids.length}");
        }
      }
      //update state:
      state = UsersState((b)=> b
        ..users = new BuiltList<User>(newUsers).toBuilder()
        ..queries = new BuiltList<UserQuery>(newQueries).toBuilder()
      );
    }
    else
    {
      var newQueries = state.queries.asList();
      if(action.params != null)
      {
        var queryIndex = state.getQueryIndex(action.params);
        if(queryIndex != -1)
        {
          newQueries[queryIndex].loading = false;
          newQueries[queryIndex].error = action.error;
        }
        state = UsersState((b)=> b
          ..queries = BuiltList(newQueries).toBuilder()
        );
      }
    }
  }
  return state;
}

class UserQuery{
  String params;
  String error;
  bool loading;
  List<int> ids = [];
  UserQuery(this.params,{this.loading=true,this.error});
}

class UsersActionSet{
  _SaveCurrentUser saveCurrentUser(User user) => _SaveCurrentUser(user);
  _GetUsers getUsers(String params,{bool forceReload=false}) => _GetUsers(params,forceReload: forceReload);

  _UsersLoaded usersLoaded(String params,List<User> users) => _UsersLoaded(params,users:users);
  _UsersLoaded usersLoadFailed(String params,String err) => _UsersLoaded(params,error: err);

}
class _SaveCurrentUser{
  User user;
  _SaveCurrentUser(this.user);
}
class _GetUsers{
  String params;
  bool forceReload;
  _GetUsers(this.params,{this.forceReload=false});
}
class _UsersLoaded{
  String params;
  List<User> users = [];
  String error = null;
  _UsersLoaded(this.params,{this.users,this.error});
}
class _CreateQuery{
  String params;
  _CreateQuery(this.params);
}
class _ReloadQuery{
  String params;
  _ReloadQuery(this.params);
}
