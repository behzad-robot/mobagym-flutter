// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'redux-comments.dart';

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

class _$CommentState extends CommentState {
  factory _$CommentState([void updates(CommentStateBuilder b)]) =>
      (new CommentStateBuilder()..update(updates)).build();

  _$CommentState._() : super._();

  @override
  CommentState rebuild(void updates(CommentStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CommentStateBuilder toBuilder() => new CommentStateBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! CommentState) return false;
    return true;
  }

  @override
  int get hashCode {
    return 717414362;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('CommentState').toString();
  }
}

class CommentStateBuilder
    implements Builder<CommentState, CommentStateBuilder> {
  _$CommentState _$v;

  CommentStateBuilder();

  @override
  void replace(CommentState other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$CommentState;
  }

  @override
  void update(void updates(CommentStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$CommentState build() {
    final _$result = _$v ?? new _$CommentState._();
    replace(_$result);
    return _$result;
  }
}
