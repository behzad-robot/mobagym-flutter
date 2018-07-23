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
  final String createdAt;
  @override
  final int likeCount;
  @override
  final BuiltList<int> categories;
  @override
  final String type;
  @override
  final int commentsCount;
  @override
  final String shareUrl;
  @override
  final int visists;

  factory _$SocialItem([void updates(SocialItemBuilder b)]) =>
      (new SocialItemBuilder()..update(updates)).build();

  _$SocialItem._(
      {this.id,
      this.userId,
      this.video,
      this.videoLink,
      this.image,
      this.thumbnail,
      this.description,
      this.createdAt,
      this.likeCount,
      this.categories,
      this.type,
      this.commentsCount,
      this.shareUrl,
      this.visists})
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
        userId == other.userId &&
        video == other.video &&
        videoLink == other.videoLink &&
        image == other.image &&
        thumbnail == other.thumbnail &&
        description == other.description &&
        createdAt == other.createdAt &&
        likeCount == other.likeCount &&
        categories == other.categories &&
        type == other.type &&
        commentsCount == other.commentsCount &&
        shareUrl == other.shareUrl &&
        visists == other.visists;
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
                                                        userId.hashCode),
                                                    video.hashCode),
                                                videoLink.hashCode),
                                            image.hashCode),
                                        thumbnail.hashCode),
                                    description.hashCode),
                                createdAt.hashCode),
                            likeCount.hashCode),
                        categories.hashCode),
                    type.hashCode),
                commentsCount.hashCode),
            shareUrl.hashCode),
        visists.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SocialItem')
          ..add('id', id)
          ..add('userId', userId)
          ..add('video', video)
          ..add('videoLink', videoLink)
          ..add('image', image)
          ..add('thumbnail', thumbnail)
          ..add('description', description)
          ..add('createdAt', createdAt)
          ..add('likeCount', likeCount)
          ..add('categories', categories)
          ..add('type', type)
          ..add('commentsCount', commentsCount)
          ..add('shareUrl', shareUrl)
          ..add('visists', visists))
        .toString();
  }
}

class SocialItemBuilder implements Builder<SocialItem, SocialItemBuilder> {
  _$SocialItem _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

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

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  int _likeCount;
  int get likeCount => _$this._likeCount;
  set likeCount(int likeCount) => _$this._likeCount = likeCount;

  ListBuilder<int> _categories;
  ListBuilder<int> get categories =>
      _$this._categories ??= new ListBuilder<int>();
  set categories(ListBuilder<int> categories) =>
      _$this._categories = categories;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  int _commentsCount;
  int get commentsCount => _$this._commentsCount;
  set commentsCount(int commentsCount) => _$this._commentsCount = commentsCount;

  String _shareUrl;
  String get shareUrl => _$this._shareUrl;
  set shareUrl(String shareUrl) => _$this._shareUrl = shareUrl;

  int _visists;
  int get visists => _$this._visists;
  set visists(int visists) => _$this._visists = visists;

  SocialItemBuilder();

  SocialItemBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _userId = _$v.userId;
      _video = _$v.video;
      _videoLink = _$v.videoLink;
      _image = _$v.image;
      _thumbnail = _$v.thumbnail;
      _description = _$v.description;
      _createdAt = _$v.createdAt;
      _likeCount = _$v.likeCount;
      _categories = _$v.categories?.toBuilder();
      _type = _$v.type;
      _commentsCount = _$v.commentsCount;
      _shareUrl = _$v.shareUrl;
      _visists = _$v.visists;
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
              userId: userId,
              video: video,
              videoLink: videoLink,
              image: image,
              thumbnail: thumbnail,
              description: description,
              createdAt: createdAt,
              likeCount: likeCount,
              categories: _categories?.build(),
              type: type,
              commentsCount: commentsCount,
              shareUrl: shareUrl,
              visists: visists);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'categories';
        _categories?.build();
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
