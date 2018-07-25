
import 'dart:convert';

import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'user.g.dart';
abstract class User implements Built<User, UserBuilder> {
  static Serializer<User> get serializer => _$userSerializer;

  int get id;
  String get username;
  @nullable String get profileImage;
  @nullable String get cover; //cover_photo
  @nullable String get token;
  @nullable String get nickname;
  @nullable String get password;
  @nullable String get deviceId; //device_id
  @nullable String get lastLogin; //last_login


  //xp info:
  String get title;
  int get xp;
  int get level;
  @nullable int get coins;

  //likes , comments , posts:
/*  BuiltList<int> get postedCommentsIds;
  BuiltList<int> get postedImagesIds ;
  BuiltList<int> get postedVideosIds ;
  BuiltList<int> get likedImages ;
  BuiltList<int> get likedVideos ;
  //TODO: comment actions

  BuiltList<int> get followingGamesIds; //following_games
  BuiltList<int> get followings;
  BuiltList<int> get followers;*/

  //TODO: achievements

  bool get confirmed; //confirmed users get a nice blue checkmark
  String get aboutMe; // about_me
  @nullable String get firstName; //first_name
  @nullable String get lastName; //last_name
  @nullable String get city;
  @nullable String get gender;
  static const String GENDER_MALE = "M";
  static const String GENDER_FEMALE = "F";

  @nullable int get visits;

  String get bio;
  //generated fields:
  @nullable String get gif;




  User._();
  factory User([updates(UserBuilder b)]) = _$User;
}
User parseUserFromString(String str){
  final jj = json.decode(str);
  return parseUser(jj);
}
User parseUser(dynamic jj){
  //print("ok start user!");
  final userBuilder = UserBuilder();
  userBuilder.username = jj['username'];
  userBuilder.id = jj['user_id'] ?? jj['id'];
  userBuilder.profileImage = jj['profile_image'];
  userBuilder.nickname = jj['nickname'];
  userBuilder.deviceId = jj['device_id'];
  userBuilder.password = jj['password'] ?? 'NULL';
  userBuilder.token = jj['token'];
  userBuilder.lastLogin = jj['last_login'];
  userBuilder.cover = jj['cover_photo'];
  userBuilder.title = jj['title'];
  userBuilder.xp = jj['xp'];
  userBuilder.level = jj['level'];
  userBuilder.coins = jj['coins'];
  userBuilder.aboutMe = jj['about_me'];
  userBuilder.confirmed = jj['confirmed'];
  userBuilder.firstName = jj['first_name'];
  userBuilder.lastName = jj['last_name'];
  userBuilder.city = jj['city'];
  userBuilder.gender = jj['gender'];
  userBuilder.visits = jj['visits'];
  userBuilder.bio = jj['bio'];
  userBuilder.gif = jj['gif'] ?? 'http://mobagym.com/media/mobagym-app-info/levels/gifs/finalGif1.gif';
  /*print("this is fine!");
  print("username=${userBuilder.username}");
  print(userBuilder.cover);*/
  return userBuilder.build();
}
/*

@immutable
class User{
  int id;
  String token;
  String username;
  String nickname;
  String password;
  String deviceId; //device_id
  String lastLogin; //last_login

  String profileImage; //profile_image
  String cover; //cover_photo

  //xp info:
  String title;
  int xp;
  int level;
  int coins;

  //likes , comments , posts:
  List<int> postedCommentsIds = [];
  List<int> postedImagesIds = [];
  List<int> postedVideosIds = [];
  List<int> likedImages =[], likedVideos =[];
  //TODO: comment actions

  List<int> followingGamesIds; //following_games
  List<int> followings = [],followers = [];

  //TODO: achievements

  bool confirmed; //confirmed users get a nice blue checkmark
  String aboutMe=""; // about_me
  String firstName=""; //first_name
  String lastName=""; //last_name
  String city="";
  String gender="?";
  static const String GENDER_MALE = "M";
  static const String GENDER_FEMALE = "F";

  int visits;

  String bio;
  //generated fields:
  String gif;
  //UserExtraInfo extraInfo;

  User.jsonString(String jsonStr) : this.json(json.decode(jsonStr));
  User.json(dynamic jsonObj){
    //dynamic jsonObj = json.decode(jsonStr);
    id = jsonObj['id'];
    if(jsonObj['user_id'] != null)
      id = jsonObj['user_id'];
    username = jsonObj['username'];
    nickname = jsonObj['nickname'];
    //usually there's no password!
    deviceId = jsonObj['device_id'];
    lastLogin = jsonObj['last_login'];
    profileImage = API.checkFileUrl( jsonObj['profile_image'] );
    cover = API.checkFileUrl( jsonObj['cover_photo'] );
    //xp info:
    title = jsonObj['title'];
    xp = jsonObj['xp'];
    level = jsonObj['level'];
    coins = jsonObj['coins'];
    //login only fields:
    //likes , comments , posts: TODO
    if(jsonObj['post_comments'] != null)
    {
      token = jsonObj['token'];
      postedCommentsIds = new List<int>();
      postedImagesIds = new List<int>();
      postedVideosIds = new List<int>();
      var post_comments = jsonObj['post_comments'];
      for(var i = 0 ; i < post_comments.length;i++)
        postedCommentsIds.add(post_comments[i]);
      var post_images = jsonObj['post_images'];
      if(post_images != null)
      {
        for(var i = 0 ; i < post_images.length;i++)
          postedImagesIds.add(post_images[i]);
      }
      var post_videos = jsonObj['post_videos'];
      if(post_videos != null)
      {
        for(var i = 0 ; i < post_videos.length;i++)
          postedVideosIds.add(post_images[i]);
      }
      //following stuff:
      followingGamesIds = new List<int>();
      var following_games = jsonObj['following_games'];
      for(var i = 0; i < following_games.length ; i++)
        followingGamesIds.add(following_games[i]);

    }

    followings = new List<int>();
    var followings_json = jsonObj['following_users'];
    for(var i = 0 ; i < followings_json.length ; i++)
      followings.add(followings_json[i]);
    followers = new List<int>();
    var followers_json  = jsonObj['followers'];
    for(var i = 0 ; i < followers_json.length ; i++)
      followers.add(followers_json[i]);

    //info:
    confirmed = jsonObj['confirmed'];
    aboutMe = fixString(jsonObj['about_me']);
    firstName = fixString(jsonObj['first_name']);
    lastName = fixString(jsonObj['last_name']);
    city = fixString(jsonObj['city']);
    gender = fixString(jsonObj['gender']);

    visits = jsonObj['visits'];


   */
/* bio = jsonObj['bio'];
    //print("$username => $bio");
    if(bio == null || bio == "" || !bio.contains("{"))
    {
      //print(username+"=>empty bio!");
      extraInfo = new UserExtraInfo();
    }
    else
      extraInfo = UserExtraInfo.json(json.decode(bio));*//*


  }
  String fixString(s){
    return s != null ? s : "";
  }

}

@immutable
class UserExtraInfo{
  String medalToken;
  String medalUrl;
  UserExtraInfo.json(dynamic jsonObj){
    medalToken = jsonObj['medal'];
    if(medalToken == null)
      medalToken = "reach_level_10";//TODO:replace with some dummy good achievement token!
  }
  UserExtraInfo(){
    medalToken = "reach_level_10"; //TODO:replace with some dummy good achievement token!
  }
}*/
