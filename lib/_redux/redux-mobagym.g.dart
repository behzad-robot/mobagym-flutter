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
  final SocialState socialState;
  @override
  final AppInfoState appInfoState;

  factory _$MobagymAppState([void updates(MobagymAppStateBuilder b)]) =>
      (new MobagymAppStateBuilder()..update(updates)).build();

  _$MobagymAppState._({this.socialState, this.appInfoState}) : super._() {
    if (socialState == null)
      throw new BuiltValueNullFieldError('MobagymAppState', 'socialState');
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
    return socialState == other.socialState &&
        appInfoState == other.appInfoState;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, socialState.hashCode), appInfoState.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MobagymAppState')
          ..add('socialState', socialState)
          ..add('appInfoState', appInfoState))
        .toString();
  }
}

class MobagymAppStateBuilder
    implements Builder<MobagymAppState, MobagymAppStateBuilder> {
  _$MobagymAppState _$v;

  SocialStateBuilder _socialState;
  SocialStateBuilder get socialState =>
      _$this._socialState ??= new SocialStateBuilder();
  set socialState(SocialStateBuilder socialState) =>
      _$this._socialState = socialState;

  AppInfoStateBuilder _appInfoState;
  AppInfoStateBuilder get appInfoState =>
      _$this._appInfoState ??= new AppInfoStateBuilder();
  set appInfoState(AppInfoStateBuilder appInfoState) =>
      _$this._appInfoState = appInfoState;

  MobagymAppStateBuilder();

  MobagymAppStateBuilder get _$this {
    if (_$v != null) {
      _socialState = _$v.socialState?.toBuilder();
      _appInfoState = _$v.appInfoState?.toBuilder();
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
              socialState: socialState.build(),
              appInfoState: _appInfoState?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'socialState';
        socialState.build();
        _$failedField = 'appInfoState';
        _appInfoState?.build();
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
