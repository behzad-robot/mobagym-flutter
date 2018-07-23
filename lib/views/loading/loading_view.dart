import 'package:flutter/material.dart';

class LoadingView extends StatelessWidget {
  String _text;

  LoadingView.normal() {
    _text = "Loading Dreamerz...";
  }

  LoadingView(this._text);

  @override
  Widget build(BuildContext context) {
    return new Center(
        child: new Column(
      children: <Widget>[
        new CircularProgressIndicator(),
        new Text(_text),
      ],
    ));
  }
}
