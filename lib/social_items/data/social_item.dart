

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:mobagym/users/data/user.dart';




part 'social_item.g.dart';


abstract class SocialItem implements Built<SocialItem, SocialItemBuilder> {

  @nullable int get id;
  @nullable String get type;
  @nullable int get userId; //owner
  @nullable String get video;
  @nullable String get videoLink;
  @nullable String get image;
  @nullable String get thumbnail;
  @nullable String get description;
  @nullable int get likeCount;
  @nullable int get commentsCount;
  //@nullable List<int> get categories;


  @nullable String get shareUrl;
  @nullable int get visits;
  @nullable String get createdAt;

  @nullable User get user;

  static const String TYPE_IMAGE = "imagepost";
  static const String TYPE_VIDEO = "videopost";

  bool isImage(){
    return type == TYPE_IMAGE;
  }
  bool isVideo(){
    return type == TYPE_VIDEO;
  }

  SocialItem._();
  factory SocialItem([updates(SocialItemBuilder b)]) = _$SocialItem;

}

SocialItem parseSocialItemStr(String js){
  return parseSocialItem(json.decode(js));
}
SocialItem parseSocialItem(dynamic jo){
  final builder = SocialItemBuilder();

  builder.id = jo['id'];
  builder.type = jo['type'];
  builder.userId = jo['owner'];
  builder.video = jo['video'];
  builder.videoLink = jo['video_link'];
  builder.image= jo['image'];
  builder.thumbnail= jo['thumbnail'];
  builder.description = jo['description'];
  builder.likeCount = jo['likes'];
  builder.commentsCount = jo['comments_count'];
  builder.shareUrl = jo['share_url'];
  builder.visits = jo['visits'];
  builder.createdAt = jo['create_date'];


  return builder.build();
}