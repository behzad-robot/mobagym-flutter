

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';




part 'social_item.g.dart';


abstract class SocialItem implements Built<SocialItem, SocialItemBuilder> {

  @nullable int get id;
  @nullable int get userId; //owner
  @nullable String get video;
  @nullable String get videoLink;
  @nullable String get image;
  @nullable String get thumbnail;
  @nullable String get description;
  @nullable String get createdAt;
  @nullable int get likeCount;
  @nullable BuiltList<int> get categories;
  @nullable String get type;
  @nullable int get commentsCount;
  @nullable String get shareUrl;
  @nullable int get visists;


  SocialItem._();
  factory SocialItem([updates(SocialItemBuilder b)]) = _$SocialItem;

}

SocialItem parseSocialItemStr(String js){
  var jo = json.decode(js);
  return parseSocialItem(json.decode(js));
}
SocialItem parseSocialItem(dynamic jo){
  final builder = SocialItemBuilder();

  builder.id = jo['id'];
  builder.userId = jo['owner'];
  builder.image = jo['image'];
  builder.description = jo['description'];
  builder.likeCount = jo['likes'];
  return builder.build();
}