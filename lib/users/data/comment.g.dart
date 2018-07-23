// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_returning_this
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first

class _$Comment extends Comment {
  @override
  final int id;
  @override
  final String parentId;
  @override
  final int userId;
  @override
  final int likeCount;
  @override
  final int dislikeCount;
  @override
  final int contentType;
  @override
  final String objetcId;
  @override
  final String createdAt;
  @override
  final String body;

  factory _$Comment([void updates(CommentBuilder b)]) =>
      (new CommentBuilder()..update(updates)).build();

  _$Comment._(
      {this.id,
      this.parentId,
      this.userId,
      this.likeCount,
      this.dislikeCount,
      this.contentType,
      this.objetcId,
      this.createdAt,
      this.body})
      : super._();

  @override
  Comment rebuild(void updates(CommentBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CommentBuilder toBuilder() => new CommentBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Comment) return false;
    return id == other.id &&
        parentId == other.parentId &&
        userId == other.userId &&
        likeCount == other.likeCount &&
        dislikeCount == other.dislikeCount &&
        contentType == other.contentType &&
        objetcId == other.objetcId &&
        createdAt == other.createdAt &&
        body == other.body;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), parentId.hashCode),
                                userId.hashCode),
                            likeCount.hashCode),
                        dislikeCount.hashCode),
                    contentType.hashCode),
                objetcId.hashCode),
            createdAt.hashCode),
        body.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Comment')
          ..add('id', id)
          ..add('parentId', parentId)
          ..add('userId', userId)
          ..add('likeCount', likeCount)
          ..add('dislikeCount', dislikeCount)
          ..add('contentType', contentType)
          ..add('objetcId', objetcId)
          ..add('createdAt', createdAt)
          ..add('body', body))
        .toString();
  }
}

class CommentBuilder implements Builder<Comment, CommentBuilder> {
  _$Comment _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _parentId;
  String get parentId => _$this._parentId;
  set parentId(String parentId) => _$this._parentId = parentId;

  int _userId;
  int get userId => _$this._userId;
  set userId(int userId) => _$this._userId = userId;

  int _likeCount;
  int get likeCount => _$this._likeCount;
  set likeCount(int likeCount) => _$this._likeCount = likeCount;

  int _dislikeCount;
  int get dislikeCount => _$this._dislikeCount;
  set dislikeCount(int dislikeCount) => _$this._dislikeCount = dislikeCount;

  int _contentType;
  int get contentType => _$this._contentType;
  set contentType(int contentType) => _$this._contentType = contentType;

  String _objetcId;
  String get objetcId => _$this._objetcId;
  set objetcId(String objetcId) => _$this._objetcId = objetcId;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  CommentBuilder();

  CommentBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _parentId = _$v.parentId;
      _userId = _$v.userId;
      _likeCount = _$v.likeCount;
      _dislikeCount = _$v.dislikeCount;
      _contentType = _$v.contentType;
      _objetcId = _$v.objetcId;
      _createdAt = _$v.createdAt;
      _body = _$v.body;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Comment other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Comment;
  }

  @override
  void update(void updates(CommentBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Comment build() {
    final _$result = _$v ??
        new _$Comment._(
            id: id,
            parentId: parentId,
            userId: userId,
            likeCount: likeCount,
            dislikeCount: dislikeCount,
            contentType: contentType,
            objetcId: objetcId,
            createdAt: createdAt,
            body: body);
    replace(_$result);
    return _$result;
  }
}
