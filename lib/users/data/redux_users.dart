
import 'package:meta/meta.dart';
import 'package:mobagym/users/data/user.dart';

import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';

part 'redux_users.g.dart';

abstract class UsersState implements Built<UsersState, UsersStateBuilder> {

  UsersState._();
  factory UsersState([updates(UsersStateBuilder b)]) = _$UsersState;


  User get currentUser;
  BuiltList<UserQuery> get queries;
  BuiltList<User> get users;

  //User getUser(int id)


}

UsersState usersReducer(UsersState state,dynamic action)
{
  if(action is _SaveCurrentUser){
    var builder  = state.toBuilder();
    builder.currentUser = action.user.toBuilder();
    return builder.build();
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

}
class _SaveCurrentUser{
  User user;
  _SaveCurrentUser(this.user);
}

