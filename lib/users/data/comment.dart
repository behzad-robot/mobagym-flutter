import 'dart:convert';

import 'package:built_value/serializer.dart';
import 'package:built_value/serializer.dart';

import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';






part 'comment.g.dart';
abstract class Comment implements Built<Comment, CommentBuilder> {


  static const String CONTENT_TYPE_IMAGE = "imagepost";
  static const String CONTENT_TYPE_VIDEO = "videopost";
  static const String CONTENT_TYPE_GAME = "gameblog";



  @nullable int get id;
  @nullable String get parentId;
  @nullable int get userId;
  @nullable int get likeCount;
  @nullable int get dislikeCount;
  @nullable int get contentType;
  @nullable String get objetcId;

  @nullable String get createdAt;
  @nullable String get body;

  //@nullable User get user; //TODO:add again later!

//  static Comment simpleComment(int objectId,String createdAt){
//    var builder = new CommentBuilder();
//    builder.objetcId = objectId;
//    builder.createdAt = createdAt;
////also if other fields aint @nullable give a dummy value for them!
//    return builder.build();
//  }
  Comment._();
  factory Comment([updates(CommentBuilder b)]) = _$Comment;


}

Comment parseCommentStr(String js){
  var jo = json.decode(js);
  return parseComment(json.decode(js));
}
Comment parseComment(dynamic jo){
  final builder = CommentBuilder();


  builder.id = jo['id'];
  builder.parentId = jo['parent'];
  builder.body = jo['comment'];
  builder.userId = jo['user'];
  builder.createdAt = jo['submit_date'];
  builder.likeCount = jo['likes'];
  builder.dislikeCount = jo['dislikes'];
  builder.contentType = jo['content_type'];
  builder.objetcId = jo['object_pk'];

  return builder.build();
}