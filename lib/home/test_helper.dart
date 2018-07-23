
import 'package:flutter/material.dart';

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
                RaisedButton(child:Text("Users List"),onPressed:(){

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