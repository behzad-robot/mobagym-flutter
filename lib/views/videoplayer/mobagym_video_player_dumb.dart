
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';


class MobagymVideoPlayerSimple extends StatefulWidget{
  String url;
  MobagymVideoPlayerSimple(this.url);
  @override
  State<StatefulWidget> createState() => _MobagymVideoPlayerState(url);

}
class _MobagymVideoPlayerState extends State<MobagymVideoPlayerSimple>{
  VideoPlayerController _controller;
  String url;
  _MobagymVideoPlayerState(this.url);

  @override
  void initState() {
    super.initState();
    _controller = new VideoPlayerController.network(
      url,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Chewie(
      _controller,
      aspectRatio: 16/9,
      autoPlay: false,
      looping: false,
    );
  }

}