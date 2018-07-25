// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

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

class _$Game extends Game {
  @override
  final int id;
  @override
  final String app_name;
  @override
  final String title;
  @override
  final int category;
  @override
  final String publisher;
  @override
  final double googleplay_rating;
  @override
  final String url;
  @override
  final int weekly_visits;
  @override
  final int total_visits;
  @override
  final bool live;
  @override
  final String intro;
  @override
  final String body;
  @override
  final bool proprietary;
  @override
  final bool is_featured;
  @override
  final String featured_image;
  @override
  final String thumbnail_image;
  @override
  final String thumbnail;
  @override
  final BuiltList<Screenshots> screenshots;
  @override
  final String trailer;
  @override
  final BuiltList<Files> files;
  @override
  final String publish_date;
  @override
  final String modify_date;
  @override
  final String pdate;
  @override
  final BuiltList<Platforms> platforms;
  @override
  final String esra;
  @override
  final int chatroom_id;

  factory _$Game([void updates(GameBuilder b)]) =>
      (new GameBuilder()..update(updates)).build();

  _$Game._(
      {this.id,
      this.app_name,
      this.title,
      this.category,
      this.publisher,
      this.googleplay_rating,
      this.url,
      this.weekly_visits,
      this.total_visits,
      this.live,
      this.intro,
      this.body,
      this.proprietary,
      this.is_featured,
      this.featured_image,
      this.thumbnail_image,
      this.thumbnail,
      this.screenshots,
      this.trailer,
      this.files,
      this.publish_date,
      this.modify_date,
      this.pdate,
      this.platforms,
      this.esra,
      this.chatroom_id})
      : super._();

  @override
  Game rebuild(void updates(GameBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  GameBuilder toBuilder() => new GameBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Game) return false;
    return id == other.id &&
        app_name == other.app_name &&
        title == other.title &&
        category == other.category &&
        publisher == other.publisher &&
        googleplay_rating == other.googleplay_rating &&
        url == other.url &&
        weekly_visits == other.weekly_visits &&
        total_visits == other.total_visits &&
        live == other.live &&
        intro == other.intro &&
        body == other.body &&
        proprietary == other.proprietary &&
        is_featured == other.is_featured &&
        featured_image == other.featured_image &&
        thumbnail_image == other.thumbnail_image &&
        thumbnail == other.thumbnail &&
        screenshots == other.screenshots &&
        trailer == other.trailer &&
        files == other.files &&
        publish_date == other.publish_date &&
        modify_date == other.modify_date &&
        pdate == other.pdate &&
        platforms == other.platforms &&
        esra == other.esra &&
        chatroom_id == other.chatroom_id;
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
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc(0, id.hashCode), app_name.hashCode), title.hashCode), category.hashCode), publisher.hashCode), googleplay_rating.hashCode), url.hashCode),
                                                                                weekly_visits.hashCode),
                                                                            total_visits.hashCode),
                                                                        live.hashCode),
                                                                    intro.hashCode),
                                                                body.hashCode),
                                                            proprietary.hashCode),
                                                        is_featured.hashCode),
                                                    featured_image.hashCode),
                                                thumbnail_image.hashCode),
                                            thumbnail.hashCode),
                                        screenshots.hashCode),
                                    trailer.hashCode),
                                files.hashCode),
                            publish_date.hashCode),
                        modify_date.hashCode),
                    pdate.hashCode),
                platforms.hashCode),
            esra.hashCode),
        chatroom_id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Game')
          ..add('id', id)
          ..add('app_name', app_name)
          ..add('title', title)
          ..add('category', category)
          ..add('publisher', publisher)
          ..add('googleplay_rating', googleplay_rating)
          ..add('url', url)
          ..add('weekly_visits', weekly_visits)
          ..add('total_visits', total_visits)
          ..add('live', live)
          ..add('intro', intro)
          ..add('body', body)
          ..add('proprietary', proprietary)
          ..add('is_featured', is_featured)
          ..add('featured_image', featured_image)
          ..add('thumbnail_image', thumbnail_image)
          ..add('thumbnail', thumbnail)
          ..add('screenshots', screenshots)
          ..add('trailer', trailer)
          ..add('files', files)
          ..add('publish_date', publish_date)
          ..add('modify_date', modify_date)
          ..add('pdate', pdate)
          ..add('platforms', platforms)
          ..add('esra', esra)
          ..add('chatroom_id', chatroom_id))
        .toString();
  }
}

class GameBuilder implements Builder<Game, GameBuilder> {
  _$Game _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _app_name;
  String get app_name => _$this._app_name;
  set app_name(String app_name) => _$this._app_name = app_name;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  int _category;
  int get category => _$this._category;
  set category(int category) => _$this._category = category;

  String _publisher;
  String get publisher => _$this._publisher;
  set publisher(String publisher) => _$this._publisher = publisher;

  double _googleplay_rating;
  double get googleplay_rating => _$this._googleplay_rating;
  set googleplay_rating(double googleplay_rating) =>
      _$this._googleplay_rating = googleplay_rating;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  int _weekly_visits;
  int get weekly_visits => _$this._weekly_visits;
  set weekly_visits(int weekly_visits) => _$this._weekly_visits = weekly_visits;

  int _total_visits;
  int get total_visits => _$this._total_visits;
  set total_visits(int total_visits) => _$this._total_visits = total_visits;

  bool _live;
  bool get live => _$this._live;
  set live(bool live) => _$this._live = live;

  String _intro;
  String get intro => _$this._intro;
  set intro(String intro) => _$this._intro = intro;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  bool _proprietary;
  bool get proprietary => _$this._proprietary;
  set proprietary(bool proprietary) => _$this._proprietary = proprietary;

  bool _is_featured;
  bool get is_featured => _$this._is_featured;
  set is_featured(bool is_featured) => _$this._is_featured = is_featured;

  String _featured_image;
  String get featured_image => _$this._featured_image;
  set featured_image(String featured_image) =>
      _$this._featured_image = featured_image;

  String _thumbnail_image;
  String get thumbnail_image => _$this._thumbnail_image;
  set thumbnail_image(String thumbnail_image) =>
      _$this._thumbnail_image = thumbnail_image;

  String _thumbnail;
  String get thumbnail => _$this._thumbnail;
  set thumbnail(String thumbnail) => _$this._thumbnail = thumbnail;

  ListBuilder<Screenshots> _screenshots;
  ListBuilder<Screenshots> get screenshots =>
      _$this._screenshots ??= new ListBuilder<Screenshots>();
  set screenshots(ListBuilder<Screenshots> screenshots) =>
      _$this._screenshots = screenshots;

  String _trailer;
  String get trailer => _$this._trailer;
  set trailer(String trailer) => _$this._trailer = trailer;

  ListBuilder<Files> _files;
  ListBuilder<Files> get files => _$this._files ??= new ListBuilder<Files>();
  set files(ListBuilder<Files> files) => _$this._files = files;

  String _publish_date;
  String get publish_date => _$this._publish_date;
  set publish_date(String publish_date) => _$this._publish_date = publish_date;

  String _modify_date;
  String get modify_date => _$this._modify_date;
  set modify_date(String modify_date) => _$this._modify_date = modify_date;

  String _pdate;
  String get pdate => _$this._pdate;
  set pdate(String pdate) => _$this._pdate = pdate;

  ListBuilder<Platforms> _platforms;
  ListBuilder<Platforms> get platforms =>
      _$this._platforms ??= new ListBuilder<Platforms>();
  set platforms(ListBuilder<Platforms> platforms) =>
      _$this._platforms = platforms;

  String _esra;
  String get esra => _$this._esra;
  set esra(String esra) => _$this._esra = esra;

  int _chatroom_id;
  int get chatroom_id => _$this._chatroom_id;
  set chatroom_id(int chatroom_id) => _$this._chatroom_id = chatroom_id;

  GameBuilder();

  GameBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _app_name = _$v.app_name;
      _title = _$v.title;
      _category = _$v.category;
      _publisher = _$v.publisher;
      _googleplay_rating = _$v.googleplay_rating;
      _url = _$v.url;
      _weekly_visits = _$v.weekly_visits;
      _total_visits = _$v.total_visits;
      _live = _$v.live;
      _intro = _$v.intro;
      _body = _$v.body;
      _proprietary = _$v.proprietary;
      _is_featured = _$v.is_featured;
      _featured_image = _$v.featured_image;
      _thumbnail_image = _$v.thumbnail_image;
      _thumbnail = _$v.thumbnail;
      _screenshots = _$v.screenshots?.toBuilder();
      _trailer = _$v.trailer;
      _files = _$v.files?.toBuilder();
      _publish_date = _$v.publish_date;
      _modify_date = _$v.modify_date;
      _pdate = _$v.pdate;
      _platforms = _$v.platforms?.toBuilder();
      _esra = _$v.esra;
      _chatroom_id = _$v.chatroom_id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Game other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Game;
  }

  @override
  void update(void updates(GameBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Game build() {
    _$Game _$result;
    try {
      _$result = _$v ??
          new _$Game._(
              id: id,
              app_name: app_name,
              title: title,
              category: category,
              publisher: publisher,
              googleplay_rating: googleplay_rating,
              url: url,
              weekly_visits: weekly_visits,
              total_visits: total_visits,
              live: live,
              intro: intro,
              body: body,
              proprietary: proprietary,
              is_featured: is_featured,
              featured_image: featured_image,
              thumbnail_image: thumbnail_image,
              thumbnail: thumbnail,
              screenshots: _screenshots?.build(),
              trailer: trailer,
              files: _files?.build(),
              publish_date: publish_date,
              modify_date: modify_date,
              pdate: pdate,
              platforms: _platforms?.build(),
              esra: esra,
              chatroom_id: chatroom_id);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'screenshots';
        _screenshots?.build();

        _$failedField = 'files';
        _files?.build();

        _$failedField = 'platforms';
        _platforms?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Game', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Files extends Files {
  @override
  final String file_type;
  @override
  final String file_Link;

  factory _$Files([void updates(FilesBuilder b)]) =>
      (new FilesBuilder()..update(updates)).build();

  _$Files._({this.file_type, this.file_Link}) : super._();

  @override
  Files rebuild(void updates(FilesBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  FilesBuilder toBuilder() => new FilesBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Files) return false;
    return file_type == other.file_type && file_Link == other.file_Link;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, file_type.hashCode), file_Link.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Files')
          ..add('file_type', file_type)
          ..add('file_Link', file_Link))
        .toString();
  }
}

class FilesBuilder implements Builder<Files, FilesBuilder> {
  _$Files _$v;

  String _file_type;
  String get file_type => _$this._file_type;
  set file_type(String file_type) => _$this._file_type = file_type;

  String _file_Link;
  String get file_Link => _$this._file_Link;
  set file_Link(String file_Link) => _$this._file_Link = file_Link;

  FilesBuilder();

  FilesBuilder get _$this {
    if (_$v != null) {
      _file_type = _$v.file_type;
      _file_Link = _$v.file_Link;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Files other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Files;
  }

  @override
  void update(void updates(FilesBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Files build() {
    final _$result =
        _$v ?? new _$Files._(file_type: file_type, file_Link: file_Link);
    replace(_$result);
    return _$result;
  }
}

class _$Screenshots extends Screenshots {
  @override
  final int id;
  @override
  final String image;
  @override
  final String caption;

  factory _$Screenshots([void updates(ScreenshotsBuilder b)]) =>
      (new ScreenshotsBuilder()..update(updates)).build();

  _$Screenshots._({this.id, this.image, this.caption}) : super._();

  @override
  Screenshots rebuild(void updates(ScreenshotsBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ScreenshotsBuilder toBuilder() => new ScreenshotsBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Screenshots) return false;
    return id == other.id && image == other.image && caption == other.caption;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), image.hashCode), caption.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Screenshots')
          ..add('id', id)
          ..add('image', image)
          ..add('caption', caption))
        .toString();
  }
}

class ScreenshotsBuilder implements Builder<Screenshots, ScreenshotsBuilder> {
  _$Screenshots _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  String _caption;
  String get caption => _$this._caption;
  set caption(String caption) => _$this._caption = caption;

  ScreenshotsBuilder();

  ScreenshotsBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _image = _$v.image;
      _caption = _$v.caption;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Screenshots other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Screenshots;
  }

  @override
  void update(void updates(ScreenshotsBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Screenshots build() {
    final _$result =
        _$v ?? new _$Screenshots._(id: id, image: image, caption: caption);
    replace(_$result);
    return _$result;
  }
}

class _$Platforms extends Platforms {
  @override
  final String name;
  @override
  final String icon;

  factory _$Platforms([void updates(PlatformsBuilder b)]) =>
      (new PlatformsBuilder()..update(updates)).build();

  _$Platforms._({this.name, this.icon}) : super._();

  @override
  Platforms rebuild(void updates(PlatformsBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  PlatformsBuilder toBuilder() => new PlatformsBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Platforms) return false;
    return name == other.name && icon == other.icon;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), icon.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Platforms')
          ..add('name', name)
          ..add('icon', icon))
        .toString();
  }
}

class PlatformsBuilder implements Builder<Platforms, PlatformsBuilder> {
  _$Platforms _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _icon;
  String get icon => _$this._icon;
  set icon(String icon) => _$this._icon = icon;

  PlatformsBuilder();

  PlatformsBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _icon = _$v.icon;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Platforms other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Platforms;
  }

  @override
  void update(void updates(PlatformsBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Platforms build() {
    final _$result = _$v ?? new _$Platforms._(name: name, icon: icon);
    replace(_$result);
    return _$result;
  }
}

class _$GameCategory extends GameCategory {
  @override
  final int id;
  @override
  final String name;
  @override
  final String icon;

  factory _$GameCategory([void updates(GameCategoryBuilder b)]) =>
      (new GameCategoryBuilder()..update(updates)).build();

  _$GameCategory._({this.id, this.name, this.icon}) : super._();

  @override
  GameCategory rebuild(void updates(GameCategoryBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  GameCategoryBuilder toBuilder() => new GameCategoryBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! GameCategory) return false;
    return id == other.id && name == other.name && icon == other.icon;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), name.hashCode), icon.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GameCategory')
          ..add('id', id)
          ..add('name', name)
          ..add('icon', icon))
        .toString();
  }
}

class GameCategoryBuilder
    implements Builder<GameCategory, GameCategoryBuilder> {
  _$GameCategory _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _icon;
  String get icon => _$this._icon;
  set icon(String icon) => _$this._icon = icon;

  GameCategoryBuilder();

  GameCategoryBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _icon = _$v.icon;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GameCategory other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$GameCategory;
  }

  @override
  void update(void updates(GameCategoryBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$GameCategory build() {
    final _$result =
        _$v ?? new _$GameCategory._(id: id, name: name, icon: icon);
    replace(_$result);
    return _$result;
  }
}
