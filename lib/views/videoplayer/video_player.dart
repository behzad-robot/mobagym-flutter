
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class MyVideoPlayer extends StatefulWidget{
  String url,thumbnail;
  double height;
  MyVideoPlayer({this.url,this.thumbnail,this.height = 300.0});
  @override
  State<StatefulWidget> createState() => _MyVideoPlayerState(url:url,thumbnail: thumbnail,height: height);

}
class _MyVideoPlayerState extends State<MyVideoPlayer> with SingleTickerProviderStateMixin{
  String url,thumbnail;
  VideoPlayerController _controller;
  bool _isPlaying = false;
  bool _hideStuff = false;
  double height;
  double timePosition;
  Timer _timer;

  _MyVideoPlayerState({this.url,this.thumbnail,this.height});

  @override
  void initState() {
    super.initState();
    _controller = new VideoPlayerController.network(url);
    _controller..addListener(() {
      final bool isPlaying = _controller.value.isPlaying;
      if (isPlaying != _isPlaying) {
        setState(() {
          _isPlaying = isPlaying;
          _hideStuff = false;
          _timer = new Timer(const Duration(milliseconds: 1000),() {
            print("timer done!");
            setState(()
            {
              _hideStuff = true;
            });
          });
        });
      }
      //print(_controller.value.position.inSeconds);
    })
    ..initialize();
  }
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    if(_timer != null)
      _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      width: MediaQuery.of(context).size.width,
      height: height,
      color:Colors.black,
      child: InkWell(child:Stack(
        children: <Widget>[
          VideoPlayer(_controller),
          (!_isPlaying && _controller.value.position.inSeconds == 0 && thumbnail != null ? SizedBox.expand(child:Image.network(thumbnail,fit: BoxFit.cover,)) : Container()),
          Center(child: !_isPlaying ? PlayerIconButton(onPressed:(){_controller.play();},icon:Icons.play_arrow) : Container()),
          //new Text(_controller.value != null && _controller.value.position != null ? _controller.value.position.inSeconds.toString() : "00"),
          ( _isPlaying && !_hideStuff ? Center(child:PlayerIconButton(onPressed:(){_controller.pause();},icon:Icons.pause)) : Container()),
          PlayerTimeView(_controller),
        ],
      ),
      onTap: (){
        print("onTap()!");
        setState(() {
          _hideStuff = false;
        });
        _timer = new Timer(const Duration(milliseconds: 1000),(){
          print("timer done!");
          setState(() {
            _hideStuff = true;
          });
        });
      },
      ),
    );
  }
}
class PlayerTimeView extends StatefulWidget{
  VideoPlayerController _controller;
  PlayerTimeView(this._controller);

  @override
  State<StatefulWidget> createState() => _PlayerTimeView(_controller);

}
class _PlayerTimeView extends State<PlayerTimeView> with SingleTickerProviderStateMixin{
  VideoPlayerController _controller;
  int lastTimePositionSeconds = 0;
  int lastTimePositionMinutes = 0;
  int durationSeconds = 0;
  int durationMinutes = 0;

  _PlayerTimeView(this._controller);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller..addListener(() {
      final newPosition = _controller.value.position.inSeconds;
      if(newPosition != lastTimePositionSeconds){
        setState(() {
          lastTimePositionSeconds = newPosition % 60;
          lastTimePositionMinutes = _controller.value.position.inMinutes % 60;
          durationSeconds = _controller.value.duration.inSeconds % 60;
          durationMinutes = _controller.value.duration.inMinutes % 60;

        });
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child:Positioned(
        bottom: 5.0,left:5.0,
        child:Container(
        color:Colors.black38,
        child:Padding(
          padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 2.0),
          child:Text(((lastTimePositionMinutes < 10 ? "0" : "")+lastTimePositionMinutes.toString())+":"+(lastTimePositionSeconds < 10 ? "0" : "")+lastTimePositionSeconds.toString()+" / "+((durationMinutes <10 ? "0" : "")+durationMinutes.toString())+":"+(durationSeconds < 10 ? "0" : "")+durationSeconds.toString(),style: TextStyle(color: Colors.white),)
        )
    )));
  }

}
class PlayerIconButton extends StatelessWidget{
  Function onPressed;
  IconData icon;
  PlayerIconButton({this.onPressed,this.icon});
  @override
  Widget build(BuildContext context) {
    return new RawMaterialButton(
        onPressed:onPressed,
        fillColor: Colors.black54,
        constraints: const BoxConstraints.tightFor(
          width: 56.0,
          height: 56.0,
        ),
        child:Center(child:Icon(icon,color:Colors.white,size: 40.0,))
    );
  }

}
