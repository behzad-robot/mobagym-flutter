// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'redux-games.dart';

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

class _$GamesState extends GamesState {
  @override
  final BuiltList<Game> games;
  @override
  final BuiltList<GameQuery> queries;

  factory _$GamesState([void updates(GamesStateBuilder b)]) =>
      (new GamesStateBuilder()..update(updates)).build();

  _$GamesState._({this.games, this.queries}) : super._() {
    if (games == null)
      throw new BuiltValueNullFieldError('GamesState', 'games');
    if (queries == null)
      throw new BuiltValueNullFieldError('GamesState', 'queries');
  }

  @override
  GamesState rebuild(void updates(GamesStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  GamesStateBuilder toBuilder() => new GamesStateBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! GamesState) return false;
    return games == other.games && queries == other.queries;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, games.hashCode), queries.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GamesState')
          ..add('games', games)
          ..add('queries', queries))
        .toString();
  }
}

class GamesStateBuilder implements Builder<GamesState, GamesStateBuilder> {
  _$GamesState _$v;

  ListBuilder<Game> _games;
  ListBuilder<Game> get games => _$this._games ??= new ListBuilder<Game>();
  set games(ListBuilder<Game> games) => _$this._games = games;

  ListBuilder<GameQuery> _queries;
  ListBuilder<GameQuery> get queries =>
      _$this._queries ??= new ListBuilder<GameQuery>();
  set queries(ListBuilder<GameQuery> queries) => _$this._queries = queries;

  GamesStateBuilder();

  GamesStateBuilder get _$this {
    if (_$v != null) {
      _games = _$v.games?.toBuilder();
      _queries = _$v.queries?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GamesState other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$GamesState;
  }

  @override
  void update(void updates(GamesStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$GamesState build() {
    _$GamesState _$result;
    try {
      _$result = _$v ??
          new _$GamesState._(games: games.build(), queries: queries.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'games';
        games.build();
        _$failedField = 'queries';
        queries.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GamesState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
