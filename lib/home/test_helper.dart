
import 'package:flutter/material.dart';
import 'package:mobagym/social_items/card_list/social_items_card_list_container.dart';

class TestHelper extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(),
        body: Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                RaisedButton(child:Text("Social Card List"),onPressed:(){
                  Navigator.of(context).push(MaterialPageRoute(builder:(context)=>SocialItemsCardListContainer("")));
                },)
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