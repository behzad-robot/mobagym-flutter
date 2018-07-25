// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_item.dart';

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

class _$SocialItem extends SocialItem {
  @override
  final int id;
  @override
  final String type;
  @override
  final int userId;
  @override
  final String video;
  @override
  final String videoLink;
  @override
  final String image;
  @override
  final String thumbnail;
  @override
  final String description;
  @override
  final int likeCount;
  @override
  final int commentsCount;
  @override
  final String shareUrl;
  @override
  final int visits;
  @override
  final String createdAt;
  @override
  final User user;

  factory _$SocialItem([void updates(SocialItemBuilder b)]) =>
      (new SocialItemBuilder()..update(updates)).build();

  _$SocialItem._(
      {this.id,
      this.type,
      this.userId,
      this.video,
      this.videoLink,
      this.image,
      this.thumbnail,
      this.description,
      this.likeCount,
      this.commentsCount,
      this.shareUrl,
      this.visits,
      this.createdAt,
      this.user})
      : super._();

  @override
  SocialItem rebuild(void updates(SocialItemBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialItemBuilder toBuilder() => new SocialItemBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! SocialItem) return false;
    return id == other.id &&
        type == other.type &&
        userId == other.userId &&
        video == other.video &&
        videoLink == other.videoLink &&
        image == other.image &&
        thumbnail == other.thumbnail &&
        description == other.description &&
        likeCount == other.likeCount &&
        commentsCount == other.commentsCount &&
        shareUrl == other.shareUrl &&
        visits == other.visits &&
        createdAt == other.createdAt &&
        user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc($jc(0, id.hashCode),
                                                        type.hashCode),
                                                    userId.hashCode),
                                                video.hashCode),
                                            videoLink.hashCode),
                                        image.hashCode),
                                    thumbnail.hashCode),
                                description.hashCode),
                            likeCount.hashCode),
                        commentsCount.hashCode),
                    shareUrl.hashCode),
                visits.hashCode),
            createdAt.hashCode),
        user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SocialItem')
          ..add('id', id)
          ..add('type', type)
          ..add('userId', userId)
          ..add('video', video)
          ..add('videoLink', videoLink)
          ..add('image', image)
          ..add('thumbnail', thumbnail)
          ..add('description', description)
          ..add('likeCount', likeCount)
          ..add('commentsCount', commentsCount)
          ..add('shareUrl', shareUrl)
          ..add('visits', visits)
          ..add('createdAt', createdAt)
          ..add('user', user))
        .toString();
  }
}

class SocialItemBuilder implements Builder<SocialItem, SocialItemBuilder> {
  _$SocialItem _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  int _userId;
  int get userId => _$this._userId;
  set userId(int userId) => _$this._userId = userId;

  String _video;
  String get video => _$this._video;
  set video(String video) => _$this._video = video;

  String _videoLink;
  String get videoLink => _$this._videoLink;
  set videoLink(String videoLink) => _$this._videoLink = videoLink;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  String _thumbnail;
  String get thumbnail => _$this._thumbnail;
  set thumbnail(String thumbnail) => _$this._thumbnail = thumbnail;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  int _likeCount;
  int get likeCount => _$this._likeCount;
  set likeCount(int likeCount) => _$this._likeCount = likeCount;

  int _commentsCount;
  int get commentsCount => _$this._commentsCount;
  set commentsCount(int commentsCount) => _$this._commentsCount = commentsCount;

  String _shareUrl;
  String get shareUrl => _$this._shareUrl;
  set shareUrl(String shareUrl) => _$this._shareUrl = shareUrl;

  int _visits;
  int get visits => _$this._visits;
  set visits(int visits) => _$this._visits = visits;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  UserBuilder _user;
  UserBuilder get user => _$this._user ??= new UserBuilder();
  set user(UserBuilder user) => _$this._user = user;

  SocialItemBuilder();

  SocialItemBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _type = _$v.type;
      _userId = _$v.userId;
      _video = _$v.video;
      _videoLink = _$v.videoLink;
      _image = _$v.image;
      _thumbnail = _$v.thumbnail;
      _description = _$v.description;
      _likeCount = _$v.likeCount;
      _commentsCount = _$v.commentsCount;
      _shareUrl = _$v.shareUrl;
      _visits = _$v.visits;
      _createdAt = _$v.createdAt;
      _user = _$v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialItem other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$SocialItem;
  }

  @override
  void update(void updates(SocialItemBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SocialItem build() {
    _$SocialItem _$result;
    try {
      _$result = _$v ??
          new _$SocialItem._(
              id: id,
              type: type,
              userId: userId,
              video: video,
              videoLink: videoLink,
              image: image,
              thumbnail: thumbnail,
              description: description,
              likeCount: likeCount,
              commentsCount: commentsCount,
              shareUrl: shareUrl,
              visits: visits,
              createdAt: createdAt,
              user: _user?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SocialItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
