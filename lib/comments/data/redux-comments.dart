

import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';

part 'redux-comments.g.dart';

abstract class CommentState implements Built<CommentState, CommentStateBuilder> {
  CommentState._();
  factory CommentState([updates(CommentStateBuilder b)]) = _$CommentState;
}