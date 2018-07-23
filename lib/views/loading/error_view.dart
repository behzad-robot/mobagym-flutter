
import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget{
  String error = "Error";
  String retryButton;
  Function onRetry;
  ErrorView({this.error,this.retryButton,this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
        child:new Column(
          children: <Widget>[
            Image.asset("assets/images/skeleton.png",width:120.0,height: 120.0,),
            //Padding(padding: EdgeInsets.symmetric(vertical: 5.0),child:Text(error,style: TextStyle(color:Colors.blueGrey,fontSize:20.0),),),
            Text(error,style: TextStyle(color:Colors.blueGrey,fontSize:20.0),),
            (retryButton != null ? RaisedButton(child:Text(retryButton),onPressed: onRetry,) : Container())
          ],
        )
    );
  }

}