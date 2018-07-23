// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'redux_social_items.dart';

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

class _$SocialState extends SocialState {
  @override
  final BuiltList<SocialItem> items;
  @override
  final BuiltList<SocialItemQuery> queries;

  factory _$SocialState([void updates(SocialStateBuilder b)]) =>
      (new SocialStateBuilder()..update(updates)).build();

  _$SocialState._({this.items, this.queries}) : super._() {
    if (items == null)
      throw new BuiltValueNullFieldError('SocialState', 'items');
    if (queries == null)
      throw new BuiltValueNullFieldError('SocialState', 'queries');
  }

  @override
  SocialState rebuild(void updates(SocialStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialStateBuilder toBuilder() => new SocialStateBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! SocialState) return false;
    return items == other.items && queries == other.queries;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, items.hashCode), queries.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SocialState')
          ..add('items', items)
          ..add('queries', queries))
        .toString();
  }
}

class SocialStateBuilder implements Builder<SocialState, SocialStateBuilder> {
  _$SocialState _$v;

  ListBuilder<SocialItem> _items;
  ListBuilder<SocialItem> get items =>
      _$this._items ??= new ListBuilder<SocialItem>();
  set items(ListBuilder<SocialItem> items) => _$this._items = items;

  ListBuilder<SocialItemQuery> _queries;
  ListBuilder<SocialItemQuery> get queries =>
      _$this._queries ??= new ListBuilder<SocialItemQuery>();
  set queries(ListBuilder<SocialItemQuery> queries) =>
      _$this._queries = queries;

  SocialStateBuilder();

  SocialStateBuilder get _$this {
    if (_$v != null) {
      _items = _$v.items?.toBuilder();
      _queries = _$v.queries?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialState other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$SocialState;
  }

  @override
  void update(void updates(SocialStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SocialState build() {
    _$SocialState _$result;
    try {
      _$result = _$v ??
          new _$SocialState._(items: items.build(), queries: queries.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
        _$failedField = 'queries';
        queries.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SocialState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
