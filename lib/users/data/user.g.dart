// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

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

Serializer<User> _$userSerializer = new _$UserSerializer();

class _$UserSerializer implements StructuredSerializer<User> {
  @override
  final Iterable<Type> types = const [User, _$User];
  @override
  final String wireName = 'User';

  @override
  Iterable serialize(Serializers serializers, User object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'profileImage',
      serializers.serialize(object.profileImage,
          specifiedType: const FullType(String)),
      'nickname',
      serializers.serialize(object.nickname,
          specifiedType: const FullType(String)),
      'cover',
      serializers.serialize(object.cover,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'xp',
      serializers.serialize(object.xp, specifiedType: const FullType(int)),
      'level',
      serializers.serialize(object.level, specifiedType: const FullType(int)),
      'confirmed',
      serializers.serialize(object.confirmed,
          specifiedType: const FullType(bool)),
      'aboutMe',
      serializers.serialize(object.aboutMe,
          specifiedType: const FullType(String)),
      'bio',
      serializers.serialize(object.bio, specifiedType: const FullType(String)),
    ];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.token != null) {
      result
        ..add('token')
        ..add(serializers.serialize(object.token,
            specifiedType: const FullType(String)));
    }
    if (object.password != null) {
      result
        ..add('password')
        ..add(serializers.serialize(object.password,
            specifiedType: const FullType(String)));
    }
    if (object.deviceId != null) {
      result
        ..add('deviceId')
        ..add(serializers.serialize(object.deviceId,
            specifiedType: const FullType(String)));
    }
    if (object.lastLogin != null) {
      result
        ..add('lastLogin')
        ..add(serializers.serialize(object.lastLogin,
            specifiedType: const FullType(String)));
    }
    if (object.coins != null) {
      result
        ..add('coins')
        ..add(serializers.serialize(object.coins,
            specifiedType: const FullType(int)));
    }
    if (object.firstName != null) {
      result
        ..add('firstName')
        ..add(serializers.serialize(object.firstName,
            specifiedType: const FullType(String)));
    }
    if (object.lastName != null) {
      result
        ..add('lastName')
        ..add(serializers.serialize(object.lastName,
            specifiedType: const FullType(String)));
    }
    if (object.city != null) {
      result
        ..add('city')
        ..add(serializers.serialize(object.city,
            specifiedType: const FullType(String)));
    }
    if (object.gender != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(object.gender,
            specifiedType: const FullType(String)));
    }
    if (object.visits != null) {
      result
        ..add('visits')
        ..add(serializers.serialize(object.visits,
            specifiedType: const FullType(int)));
    }
    if (object.gif != null) {
      result
        ..add('gif')
        ..add(serializers.serialize(object.gif,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  User deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new UserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'profileImage':
          result.profileImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nickname':
          result.nickname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'deviceId':
          result.deviceId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lastLogin':
          result.lastLogin = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cover':
          result.cover = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'xp':
          result.xp = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'level':
          result.level = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'coins':
          result.coins = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'confirmed':
          result.confirmed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'aboutMe':
          result.aboutMe = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'visits':
          result.visits = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'bio':
          result.bio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gif':
          result.gif = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$User extends User {
  @override
  final int id;
  @override
  final String username;
  @override
  final String profileImage;
  @override
  final String token;
  @override
  final String nickname;
  @override
  final String password;
  @override
  final String deviceId;
  @override
  final String lastLogin;
  @override
  final String cover;
  @override
  final String title;
  @override
  final int xp;
  @override
  final int level;
  @override
  final int coins;
  @override
  final bool confirmed;
  @override
  final String aboutMe;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String city;
  @override
  final String gender;
  @override
  final int visits;
  @override
  final String bio;
  @override
  final String gif;

  factory _$User([void updates(UserBuilder b)]) =>
      (new UserBuilder()..update(updates)).build();

  _$User._(
      {this.id,
      this.username,
      this.profileImage,
      this.token,
      this.nickname,
      this.password,
      this.deviceId,
      this.lastLogin,
      this.cover,
      this.title,
      this.xp,
      this.level,
      this.coins,
      this.confirmed,
      this.aboutMe,
      this.firstName,
      this.lastName,
      this.city,
      this.gender,
      this.visits,
      this.bio,
      this.gif})
      : super._() {
    if (username == null)
      throw new BuiltValueNullFieldError('User', 'username');
    if (profileImage == null)
      throw new BuiltValueNullFieldError('User', 'profileImage');
    if (nickname == null)
      throw new BuiltValueNullFieldError('User', 'nickname');
    if (cover == null) throw new BuiltValueNullFieldError('User', 'cover');
    if (title == null) throw new BuiltValueNullFieldError('User', 'title');
    if (xp == null) throw new BuiltValueNullFieldError('User', 'xp');
    if (level == null) throw new BuiltValueNullFieldError('User', 'level');
    if (confirmed == null)
      throw new BuiltValueNullFieldError('User', 'confirmed');
    if (aboutMe == null) throw new BuiltValueNullFieldError('User', 'aboutMe');
    if (bio == null) throw new BuiltValueNullFieldError('User', 'bio');
  }

  @override
  User rebuild(void updates(UserBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBuilder toBuilder() => new UserBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! User) return false;
    return id == other.id &&
        username == other.username &&
        profileImage == other.profileImage &&
        token == other.token &&
        nickname == other.nickname &&
        password == other.password &&
        deviceId == other.deviceId &&
        lastLogin == other.lastLogin &&
        cover == other.cover &&
        title == other.title &&
        xp == other.xp &&
        level == other.level &&
        coins == other.coins &&
        confirmed == other.confirmed &&
        aboutMe == other.aboutMe &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        city == other.city &&
        gender == other.gender &&
        visits == other.visits &&
        bio == other.bio &&
        gif == other.gif;
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
                                                                            $jc($jc($jc($jc(0, id.hashCode), username.hashCode), profileImage.hashCode),
                                                                                token.hashCode),
                                                                            nickname.hashCode),
                                                                        password.hashCode),
                                                                    deviceId.hashCode),
                                                                lastLogin.hashCode),
                                                            cover.hashCode),
                                                        title.hashCode),
                                                    xp.hashCode),
                                                level.hashCode),
                                            coins.hashCode),
                                        confirmed.hashCode),
                                    aboutMe.hashCode),
                                firstName.hashCode),
                            lastName.hashCode),
                        city.hashCode),
                    gender.hashCode),
                visits.hashCode),
            bio.hashCode),
        gif.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('User')
          ..add('id', id)
          ..add('username', username)
          ..add('profileImage', profileImage)
          ..add('token', token)
          ..add('nickname', nickname)
          ..add('password', password)
          ..add('deviceId', deviceId)
          ..add('lastLogin', lastLogin)
          ..add('cover', cover)
          ..add('title', title)
          ..add('xp', xp)
          ..add('level', level)
          ..add('coins', coins)
          ..add('confirmed', confirmed)
          ..add('aboutMe', aboutMe)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('city', city)
          ..add('gender', gender)
          ..add('visits', visits)
          ..add('bio', bio)
          ..add('gif', gif))
        .toString();
  }
}

class UserBuilder implements Builder<User, UserBuilder> {
  _$User _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  String _profileImage;
  String get profileImage => _$this._profileImage;
  set profileImage(String profileImage) => _$this._profileImage = profileImage;

  String _token;
  String get token => _$this._token;
  set token(String token) => _$this._token = token;

  String _nickname;
  String get nickname => _$this._nickname;
  set nickname(String nickname) => _$this._nickname = nickname;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  String _deviceId;
  String get deviceId => _$this._deviceId;
  set deviceId(String deviceId) => _$this._deviceId = deviceId;

  String _lastLogin;
  String get lastLogin => _$this._lastLogin;
  set lastLogin(String lastLogin) => _$this._lastLogin = lastLogin;

  String _cover;
  String get cover => _$this._cover;
  set cover(String cover) => _$this._cover = cover;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  int _xp;
  int get xp => _$this._xp;
  set xp(int xp) => _$this._xp = xp;

  int _level;
  int get level => _$this._level;
  set level(int level) => _$this._level = level;

  int _coins;
  int get coins => _$this._coins;
  set coins(int coins) => _$this._coins = coins;

  bool _confirmed;
  bool get confirmed => _$this._confirmed;
  set confirmed(bool confirmed) => _$this._confirmed = confirmed;

  String _aboutMe;
  String get aboutMe => _$this._aboutMe;
  set aboutMe(String aboutMe) => _$this._aboutMe = aboutMe;

  String _firstName;
  String get firstName => _$this._firstName;
  set firstName(String firstName) => _$this._firstName = firstName;

  String _lastName;
  String get lastName => _$this._lastName;
  set lastName(String lastName) => _$this._lastName = lastName;

  String _city;
  String get city => _$this._city;
  set city(String city) => _$this._city = city;

  String _gender;
  String get gender => _$this._gender;
  set gender(String gender) => _$this._gender = gender;

  int _visits;
  int get visits => _$this._visits;
  set visits(int visits) => _$this._visits = visits;

  String _bio;
  String get bio => _$this._bio;
  set bio(String bio) => _$this._bio = bio;

  String _gif;
  String get gif => _$this._gif;
  set gif(String gif) => _$this._gif = gif;

  UserBuilder();

  UserBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _username = _$v.username;
      _profileImage = _$v.profileImage;
      _token = _$v.token;
      _nickname = _$v.nickname;
      _password = _$v.password;
      _deviceId = _$v.deviceId;
      _lastLogin = _$v.lastLogin;
      _cover = _$v.cover;
      _title = _$v.title;
      _xp = _$v.xp;
      _level = _$v.level;
      _coins = _$v.coins;
      _confirmed = _$v.confirmed;
      _aboutMe = _$v.aboutMe;
      _firstName = _$v.firstName;
      _lastName = _$v.lastName;
      _city = _$v.city;
      _gender = _$v.gender;
      _visits = _$v.visits;
      _bio = _$v.bio;
      _gif = _$v.gif;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(User other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$User;
  }

  @override
  void update(void updates(UserBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$User build() {
    final _$result = _$v ??
        new _$User._(
            id: id,
            username: username,
            profileImage: profileImage,
            token: token,
            nickname: nickname,
            password: password,
            deviceId: deviceId,
            lastLogin: lastLogin,
            cover: cover,
            title: title,
            xp: xp,
            level: level,
            coins: coins,
            confirmed: confirmed,
            aboutMe: aboutMe,
            firstName: firstName,
            lastName: lastName,
            city: city,
            gender: gender,
            visits: visits,
            bio: bio,
            gif: gif);
    replace(_$result);
    return _$result;
  }
}
