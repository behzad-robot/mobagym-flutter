import 'package:flutter/material.dart';
import 'package:mobagym/users/data/user.dart';
import 'package:mobagym/users/list/user_card.dart';

class UsersList extends StatelessWidget {
  List<User> users;
  DispatchFollowUser followUser;
  OpenUser openUser;

  UsersList(this.users,{this.followUser,this.openUser});

  @override
  Widget build(BuildContext context) {
    return getList(users);
  }
  static ListView getList(List<User> users){
    return ListView.builder(
        itemCount: users.length,
        itemBuilder: (context,index){
          if(index >= users.length)
            return null;
          return UserCard(users[index]);
        }
    );
  }

}
typedef void DispatchFollowUser(int userId);
typedef void OpenUser(int userId);
