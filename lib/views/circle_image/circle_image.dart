import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget{

  ImageProvider<dynamic> image;
  BoxFit fit;
  double height;
  double width;

  CircleImage(this.image,{this.fit = BoxFit.fill,this.width=150.0,this.height=150.0});
  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        decoration: new BoxDecoration(
            shape: BoxShape.circle,
            image: new DecorationImage(
                fit: fit,
                image: image,
            )
        )
    );
  }

}