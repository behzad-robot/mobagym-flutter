
import 'package:flutter/material.dart';
import 'package:mobagym/views/loading/loading_view.dart';

class LoadingOverlay extends StatelessWidget{

  Function onTap;
  LoadingOverlay({this.onTap});

  @override
  Widget build(BuildContext context) {
    final SCREEN_WIDTH= MediaQuery.of(context).size.width;
    final SCREEN_HEIGHT = MediaQuery.of(context).size.height;
    return new InkWell(
      child: new Container(
          width:SCREEN_WIDTH,
          height: SCREEN_HEIGHT,
          color: Colors.black45, child: new LoadingView.normal()),
      onTap: onTap != null ? onTap : (){},
    );
  }

}