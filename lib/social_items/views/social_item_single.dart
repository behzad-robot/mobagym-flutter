import 'package:flutter/material.dart';
import 'package:mobagym/social_items/data/social_item.dart';
import 'package:mobagym/social_items/views/double_tap_like_zone.dart';
import 'package:mobagym/views/videoplayer/video_player.dart';

//import 'package:mobagym/social_items/views/Social_item_single.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';
//import 'package:platform/platform.dart';
//import 'package:android_intent/android_intent.dart';

class SocialItemSingle extends StatelessWidget {
  SocialItem _item;

  SocialItemSingle(this._item);

  static const String REPORTED = "report this shit";

  @override
  Widget build(BuildContext context) {
    return new Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            appBar: AppBar(
                elevation: 0.0,
                iconTheme: IconThemeData(color: Colors.black),
                titleSpacing: 0.0,
                title: new Padding(
                    padding: new EdgeInsets.fromLTRB(5.0, 5.0, 0.0, 5.0),
                    child: new Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new InkWell(
                            child: CircleAvatar(
                              backgroundImage:
                                  NetworkImage(_item.user.profileImage),
                              radius: 20.0,
                            ),
                            onTap: () {
                              //TODO
                            },
                          ),
                          new Padding(
                              child: new Text(
                                _item.user.username,
                                textAlign: TextAlign.center,
                                style: new TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              padding: new EdgeInsets.all(10.0)),

                          new Expanded(child: Container()),
                          new IconButton(
                            onPressed: () {},
                            icon: new Icon(
                              Icons.bookmark,
                              color: Colors.black,
                            ),
                          ), //TODO
                          new PopupMenuButton<String>(
                            itemBuilder: (BuildContext context) =>
                                <PopupMenuItem<String>>[
                                  const PopupMenuItem<String>(
                                    value: REPORTED,
                                    child: ListTile(
                                        leading: Icon(
                                          Icons.warning,
                                          color: Colors.orange,
                                        ),
                                        title: Text('گزارش تخلف')),
                                  ),
                                ],
                          ) //TODO
                        ])),
                backgroundColor: Colors.white),
            body: SingleChildScrollView(
                child: Card(
                    margin: new EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 6.0),
                    child: new Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        _getContent(),
                        new Padding(
                          padding: new EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 15.0),
                          child: new Text(
                            _item.description,
                            textAlign: TextAlign.start,
                          ),
                        ),
                        _getFooter(),
                        //new Text("Likes " + state.images[index].likeCount.toString())
                      ],
                    )))));
  }

  Widget _getContent() {
    if (_item.isImage()) {
      return ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 400.0, minHeight: 100.0),
          child: Stack(
            children: <Widget>[
              Center(
                  heightFactor: 1.0,
                  child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      child: CircularProgressIndicator())),
              Center(
                  heightFactor: 1.0,
                  child: FadeInImage.memoryNetwork(
                      placeholder: kTransparentImage, image: _item.image)),
              Center(
                  heightFactor: 1.0,
                  child: DoubleTapLikeZone(onDoubleTap: () {})),
            ],
          ));
    } else //TODO: aparat support
    {
      return MyVideoPlayer(
        url: _item.video,
        height: 200.0,
        thumbnail: _item.image,
      );
    }
  }

  Widget _getFooter() {
    return new Padding(
        padding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                new IconButton(
                  onPressed: () {
                    //TODO
                  },
                  icon: new Icon(Icons.favorite_border, color: Colors.black),
                ),
                Text("1")
              ],
            ),
            Row(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    new IconButton(
                      onPressed: () {
                        /*Navigator.of(context).push(
                                    new MaterialPageRoute(
                                        builder: (context) =>
                                            new SocialItemSingle(_item)));*/
                      },
                      icon: new Icon(Icons.remove_red_eye),
                    ),
                    Text("1")
                  ],
                ),
                new IconButton(
                  onPressed: () {},
                  icon: new Icon(Icons.file_download),
                ),
                new IconButton(
                  onPressed: () async {
                    Share.share(_item.shareUrl);
                  },
                  icon: new Icon(Icons.share),
                ),
              ],
            ),
          ],
        ));
  }

  void toggleLike() {}
}
