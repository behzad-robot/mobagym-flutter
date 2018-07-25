// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'redux-mobagym.dart';

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

class _$MobagymAppState extends MobagymAppState {
  @override
  final AppInfoState appInfoState;
  @override
  final SocialState socialState;
  @override
  final UsersState usersState;
  @override
  final GamesState gamesState;

  factory _$MobagymAppState([void updates(MobagymAppStateBuilder b)]) =>
      (new MobagymAppStateBuilder()..update(updates)).build();

  _$MobagymAppState._(
      {this.appInfoState, this.socialState, this.usersState, this.gamesState})
      : super._() {
    if (socialState == null)
      throw new BuiltValueNullFieldError('MobagymAppState', 'socialState');
    if (usersState == null)
      throw new BuiltValueNullFieldError('MobagymAppState', 'usersState');
    if (gamesState == null)
      throw new BuiltValueNullFieldError('MobagymAppState', 'gamesState');
  }

  @override
  MobagymAppState rebuild(void updates(MobagymAppStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MobagymAppStateBuilder toBuilder() =>
      new MobagymAppStateBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! MobagymAppState) return false;
    return appInfoState == other.appInfoState &&
        socialState == other.socialState &&
        usersState == other.usersState &&
        gamesState == other.gamesState;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, appInfoState.hashCode), socialState.hashCode),
            usersState.hashCode),
        gamesState.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MobagymAppState')
          ..add('appInfoState', appInfoState)
          ..add('socialState', socialState)
          ..add('usersState', usersState)
          ..add('gamesState', gamesState))
        .toString();
  }
}

class MobagymAppStateBuilder
    implements Builder<MobagymAppState, MobagymAppStateBuilder> {
  _$MobagymAppState _$v;

  AppInfoStateBuilder _appInfoState;
  AppInfoStateBuilder get appInfoState =>
      _$this._appInfoState ??= new AppInfoStateBuilder();
  set appInfoState(AppInfoStateBuilder appInfoState) =>
      _$this._appInfoState = appInfoState;

  SocialStateBuilder _socialState;
  SocialStateBuilder get socialState =>
      _$this._socialState ??= new SocialStateBuilder();
  set socialState(SocialStateBuilder socialState) =>
      _$this._socialState = socialState;

  UsersStateBuilder _usersState;
  UsersStateBuilder get usersState =>
      _$this._usersState ??= new UsersStateBuilder();
  set usersState(UsersStateBuilder usersState) =>
      _$this._usersState = usersState;

  GamesStateBuilder _gamesState;
  GamesStateBuilder get gamesState =>
      _$this._gamesState ??= new GamesStateBuilder();
  set gamesState(GamesStateBuilder gamesState) =>
      _$this._gamesState = gamesState;

  MobagymAppStateBuilder();

  MobagymAppStateBuilder get _$this {
    if (_$v != null) {
      _appInfoState = _$v.appInfoState?.toBuilder();
      _socialState = _$v.socialState?.toBuilder();
      _usersState = _$v.usersState?.toBuilder();
      _gamesState = _$v.gamesState?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MobagymAppState other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$MobagymAppState;
  }

  @override
  void update(void updates(MobagymAppStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$MobagymAppState build() {
    _$MobagymAppState _$result;
    try {
      _$result = _$v ??
          new _$MobagymAppState._(
              appInfoState: _appInfoState?.build(),
              socialState: socialState.build(),
              usersState: usersState.build(),
              gamesState: gamesState.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'appInfoState';
        _appInfoState?.build();
        _$failedField = 'socialState';
        socialState.build();
        _$failedField = 'usersState';
        usersState.build();
        _$failedField = 'gamesState';
        gamesState.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MobagymAppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
