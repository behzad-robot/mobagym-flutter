// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'redux_boot.dart';

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

class _$AppInfoState extends AppInfoState {
  @override
  final AppInfo appInfo;

  factory _$AppInfoState([void updates(AppInfoStateBuilder b)]) =>
      (new AppInfoStateBuilder()..update(updates)).build();

  _$AppInfoState._({this.appInfo}) : super._() {
    if (appInfo == null)
      throw new BuiltValueNullFieldError('AppInfoState', 'appInfo');
  }

  @override
  AppInfoState rebuild(void updates(AppInfoStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AppInfoStateBuilder toBuilder() => new AppInfoStateBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! AppInfoState) return false;
    return appInfo == other.appInfo;
  }

  @override
  int get hashCode {
    return $jf($jc(0, appInfo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppInfoState')
          ..add('appInfo', appInfo))
        .toString();
  }
}

class AppInfoStateBuilder
    implements Builder<AppInfoState, AppInfoStateBuilder> {
  _$AppInfoState _$v;

  AppInfo _appInfo;
  AppInfo get appInfo => _$this._appInfo;
  set appInfo(AppInfo appInfo) => _$this._appInfo = appInfo;

  AppInfoStateBuilder();

  AppInfoStateBuilder get _$this {
    if (_$v != null) {
      _appInfo = _$v.appInfo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppInfoState other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$AppInfoState;
  }

  @override
  void update(void updates(AppInfoStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$AppInfoState build() {
    final _$result = _$v ?? new _$AppInfoState._(appInfo: appInfo);
    replace(_$result);
    return _$result;
  }
}
