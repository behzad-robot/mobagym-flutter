
import 'package:flutter/material.dart';
import 'package:mobagym/_redux/API.dart';
import 'package:mobagym/social_items/containers/social_items_card_list_container.dart';
import 'package:mobagym/users/list/users_list_container.dart';


class TestHelper extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    API.Users.loadUsers("?limit=10").then((users){
      for(var i = 0 ; i < users.length;i++)
        print(users[i].username);
    }).catchError((err){
      print(err);
    });
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(),
        body: Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                RaisedButton(child:Text("Social Card List"),onPressed:(){Navigator.of(context).push(MaterialPageRoute(builder:(context)=>SocialItemsCardListContainer("")));}),
                RaisedButton(child:Text("Users List"),onPressed:(){Navigator.of(context).push(MaterialPageRoute(builder:(context)=>UsersListContainer("")));}),
              ],
            ),
            Column(
              children: <Widget>[

              ],
            )
          ],
        ),
      ),
    );
  }

}