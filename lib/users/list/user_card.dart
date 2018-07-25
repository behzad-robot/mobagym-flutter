import 'package:flutter/material.dart';
import 'package:mobagym/users/data/user.dart';
import 'package:mobagym/users/list/users_list.dart';

class UserCard extends StatelessWidget {
  User _user;
  DispatchFollowUser followUser;
  OpenUser openUser;

  UserCard(this._user, {this.followUser, this.openUser});

  @override
  Widget build(BuildContext context) {
    print("${_user.username}=>${_user.profileImage}");
    return InkWell(
        child: Card(
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _user.profileImage != null ?  new Hero(
                  tag: "TRASH", //TODO!
                  child: new CircleAvatar(
                    backgroundImage: NetworkImage(_user.profileImage),
                    radius: 30.0,
                  )
              ) : Container(width: 30.0,height: 30.0,),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[Text(_user.username), Text(_user.title)],
                  ),
                ),
                flex: 1,
              ),
              Expanded(
                child: new RaisedButton(
                  onPressed: () {
                    followUser(_user.id);
                  },
                  child: new Text("Follow Button"),
                ),
                flex: 1,
              ),
              new CircleAvatar(
                backgroundImage: NetworkImage(_user.gif),
                radius: 25.0,
              ),
            ],
          )),
    ),
      onTap: (){
          openUser(_user.id);
      },
    );
  }
}
