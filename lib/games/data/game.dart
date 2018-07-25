import 'dart:convert';

import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:mobagym/_redux/API.dart';

part 'game.g.dart';

abstract class Game implements Built<Game, GameBuilder> {

  //game Stuffs
  @nullable int get id;
  @nullable String get app_name;
  @nullable String get title;
  @nullable int get category;
  @nullable String get publisher;
  @nullable double get googleplay_rating;

  //URL
  @nullable String get url;

  //visits
  @nullable int get weekly_visits;
  @nullable int get total_visits;
  @nullable bool get live;

  //description
  @nullable String get intro;
  @nullable String get body;

  //Proprietary and shits
  @nullable bool get proprietary;
  @nullable bool get is_featured;

  //body and thumbnails
  @nullable String get featured_image;
  @nullable String get thumbnail_image;
  @nullable String get thumbnail;

  //Videos and Images

  @nullable BuiltList<Screenshots> get screenshots;
  @nullable String get trailer;
  @nullable BuiltList<Files> get files;

  //Date
  @nullable String get publish_date;
  @nullable String get modify_date;
  @nullable String get pdate;

  //Platforms
  @nullable BuiltList<Platforms> get platforms;
  // Platforms platforms;

  //Ersa and chatroom
  @nullable String get esra;
  @nullable int get chatroom_id;


  static String Trailrvideo(String traielr)
  {
    String s = traielr;
    String s1 = s.substring(s.indexOf("http"),s.indexOf("url="));
    String trailer_video = s.substring(s.indexOf("url=")+4,s.indexOf("&img")-(s.indexOf("url=")+4));
    return trailer_video;
  }
  static String TrailerImage(String traielr)
  {
    String s = traielr;
    String s1 = s.substring(s.indexOf("http"),s.indexOf("url="));
    String trailer_thumb = s.substring(s.indexOf("img=")+4,s.indexOf("&vast")-(s.indexOf("img=")+4));
    return trailer_thumb;
  }
  String getTrailer(){
    if(trailer.contains(".mp4")) {
      print("Trailer of the trailer0 0is "+trailer);
      return trailer;
    }
    for(int i = 0 ;files != null && i < files.length ; i++)
      if(files[i].file_type=="trailer") {
        print("Trailer of the file is "+trailer);
        return files[i].file_Link;
      }

    return "";
  }


  Game._();
  factory Game([updates(GameBuilder b)]) = _$Game;
}

abstract class Files implements Built<Files, FilesBuilder> {

  @nullable  String get file_type;
  @nullable  String get file_Link;

  //TODO
//    this.file_type=API.checkFileUrl(this.file_type);
//    this.file_Link=API.checkFileUrl(this.file_Link);

  Files._();
  factory Files([updates(FilesBuilder b)]) = _$Files;
}




abstract class Screenshots implements Built<Screenshots, ScreenshotsBuilder> {
  @nullable int get id;
  @nullable String get image;
  @nullable String  get caption;

  //todo
//  this.image = API.checkFileUrl(this.image);

  Screenshots._();
  factory Screenshots([updates(ScreenshotsBuilder b)]) = _$Screenshots;
}

abstract class Platforms implements Built<Platforms, PlatformsBuilder> {
  @nullable String get name;
  @nullable String get icon;

  //todo
//  this.icon=API.checkFileUrl(this.icon);

  Platforms._();
  factory Platforms([updates(PlatformsBuilder b)]) = _$Platforms;
}

abstract class GameCategory implements Built<GameCategory, GameCategoryBuilder> {
  @nullable int get id;
  @nullable String get name;
  @nullable String get icon;

  GameCategory._();
  factory GameCategory([updates(GameCategoryBuilder b)]) = _$GameCategory;
}


Game parseGameStr(String js){
  var jo = json.decode(js);
  return parseGames(json.decode(js));
}

Game parseGames(dynamic jo){
  final gamebuilder = GameBuilder();


  gamebuilder.id = jo['id'];

  //Game Stuffs
  gamebuilder.app_name = jo['app_name'];
  gamebuilder.title = jo['title'];
  //TODO ==> category=jsonObj['category'];
  gamebuilder.publisher = jo['publisher'];
  gamebuilder.googleplay_rating = jo['googleplay_rating'];

  //URL
  gamebuilder.url = API.checkFileUrl( jo['url'] );
  //print("URL happend"+url.toString());

  //visits
  gamebuilder.weekly_visits = jo['weekly_visits'];
  gamebuilder.total_visits = jo['total_visits'];
  gamebuilder.live = jo['live'];
  //print("visits happend"+weekly_visits.toString()+"And"+total_visits.toString()+live.toString());

  //description
  gamebuilder.intro = jo['intro'];
  gamebuilder.body = jo['body'];
  //print("intro and body happend"+intro.toString()+"____ I hate_____"+body.toString());

  //Proprietary and shits
  gamebuilder.proprietary = jo['proprietary'];
  gamebuilder.is_featured = jo['is_featured'];
  //print("Shits happend "+"proprietaryis is "+proprietary.toString()+"is_featured is "+is_featured.toString());

  //body and thumbnails
  gamebuilder.featured_image = API.checkFileUrl( jo['featured_image'] );
  gamebuilder.thumbnail_image = API.checkFileUrl( jo['thumbnail_image'] );
  gamebuilder.thumbnail = API.checkFileUrl( jo['thumbnail'] );
  //print("thumb happend"+"go fuck urself behzad");

  //ScreenShots

  gamebuilder.screenshots = new ListBuilder<Screenshots>();

    var scrnsts  = jo['screenshots'];
    for(var i = 0 ; i < scrnsts.length ; i++)
//      gamebuilder.screenshots.add(new Screenshots(scrnsts[i]['id'], scrnsts[i]['image'], scrnsts[i]['caption']));

      gamebuilder.screenshots.add(parseScreenshots(scrnsts[i]));
      //print("scrnshts happend"+scrnsts.toString());


  //Trailers
  gamebuilder.trailer = API.checkFileUrl(jo['trailer_src']);
  //print("trailers happend and URL OF IS " +trailer.toString());
  //TODO convert 2 subString

  //File
  gamebuilder.files = new ListBuilder<Files>();
  var flz = jo['files'];
  for(var i = 0 ; i < flz.length ; i++)
      gamebuilder.files.add(parseFiles(flz[i]));
    //print("files happend "+flz.toString());

    //Date
  gamebuilder.publish_date = jo['publish_date'];
  gamebuilder.modify_date = jo['modify_date'];
  gamebuilder.pdate = jo['pdate'];
    //print("date happend : publish_date: "+publish_date.toString() +"modify_date :"+modify_date.toString()+"FUCK U BEHZAD :::"+pdate.toString());

    //platform
  gamebuilder.platforms = new ListBuilder<Platforms>();
  var plat = jo['platforms'];
  for(var i = 0 ; i < plat.length ; i++)
      gamebuilder.platforms.add(parsePlatforms(plat[i]));
    // //print("Platform happend");
    //print("Platform happend"+plat.toString());
    // Todo its a Single fucking platform THOUGH


    //Ersa and chatroom
    gamebuilder.esra = jo['esra'];
    gamebuilder.chatroom_id = jo['chatroom_id'];
    //print("Ersa happend"+esra.toString()+"   "+chatroom_id.toString());

    print("trailers happend and URL OF IS " + gamebuilder.trailer.toString());

  return gamebuilder.build();
}


Files parseFiles(dynamic jo){
  final builder = FilesBuilder();

  builder.file_Link = jo['file_link'];
  builder.file_type = jo['file_type'];

  return builder.build();

}

Platforms parsePlatforms(dynamic jo){
  final builder = PlatformsBuilder();

  builder.name = jo['name'];
  builder.icon = jo['icon'];

  return builder.build();

}

Screenshots parseScreenshots(dynamic jo){
  final builder = ScreenshotsBuilder();

  builder.id = jo['id'];
  builder.caption = jo['caption'];
  builder.image = jo['image'];

  return builder.build();
}


GameCategory parseGameCategory(dynamic jo){
  final builder = GameCategoryBuilder();

  builder.id = jo['id'];
  builder.name = jo['title'];
  builder.icon = API.checkFileUrl(jo['app_icon']);
}