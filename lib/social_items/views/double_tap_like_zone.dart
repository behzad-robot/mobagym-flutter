import 'package:flutter/material.dart';

class DoubleTapLikeZone extends StatefulWidget {
  Function onDoubleTap;
  DoubleTapLikeZone({this.onDoubleTap});

  @override
  State<StatefulWidget> createState() => _DoubleTapLikeImageState(onDoubleTap);
}

enum LikeWidgetStatus { HIDDEN, BECOMING_VISIBLE, VISIBLE, BECOMING_INVISIBLE }

class _DoubleTapLikeImageState extends State<DoubleTapLikeZone> with TickerProviderStateMixin { // ignore: mixin_inherits_from_not_object
  LikeWidgetStatus status = LikeWidgetStatus.HIDDEN;
  AnimationController _animController;
  Animation animation;

  Function onDoubleTap;
  _DoubleTapLikeImageState(this.onDoubleTap);

  @override
  void initState() {
    super.initState();
    _animController = AnimationController(duration: const Duration(milliseconds: 500), vsync: this);
    final CurvedAnimation curve = CurvedAnimation(parent: _animController, curve: Curves.easeIn);
    animation = Tween(begin: 0.0, end: 100.0).animate(curve);
    _animController.addStatusListener((status) {
      if (status == AnimationStatus.completed) _animController.reverse();
    });
    // _animController.forward();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    print("build!");
    return InkWell(
        onDoubleTap: (){
          print("TAP TAP!");
          setState(() {
            _animController.forward(from: 0.0);
          });
          onDoubleTap();
        },
        child:Container(
          width: 300.0,
          height: 5.0,
        child: AnimatedBuilder(
          animation: animation,
          builder: (context, child) {
            return Container(
              child: Icon(Icons.favorite,size: animation.value,color:Colors.red),
            );
          },

        )
    ));
  }
}
