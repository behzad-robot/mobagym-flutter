// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'redux_users.dart';

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

class _$UsersState extends UsersState {
  @override
  final User currentUser;
  @override
  final BuiltList<UserQuery> queries;
  @override
  final BuiltList<User> users;

  factory _$UsersState([void updates(UsersStateBuilder b)]) =>
      (new UsersStateBuilder()..update(updates)).build();

  _$UsersState._({this.currentUser, this.queries, this.users}) : super._() {
    if (currentUser == null)
      throw new BuiltValueNullFieldError('UsersState', 'currentUser');
    if (queries == null)
      throw new BuiltValueNullFieldError('UsersState', 'queries');
    if (users == null)
      throw new BuiltValueNullFieldError('UsersState', 'users');
  }

  @override
  UsersState rebuild(void updates(UsersStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersStateBuilder toBuilder() => new UsersStateBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! UsersState) return false;
    return currentUser == other.currentUser &&
        queries == other.queries &&
        users == other.users;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, currentUser.hashCode), queries.hashCode), users.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UsersState')
          ..add('currentUser', currentUser)
          ..add('queries', queries)
          ..add('users', users))
        .toString();
  }
}

class UsersStateBuilder implements Builder<UsersState, UsersStateBuilder> {
  _$UsersState _$v;

  UserBuilder _currentUser;
  UserBuilder get currentUser => _$this._currentUser ??= new UserBuilder();
  set currentUser(UserBuilder currentUser) => _$this._currentUser = currentUser;

  ListBuilder<UserQuery> _queries;
  ListBuilder<UserQuery> get queries =>
      _$this._queries ??= new ListBuilder<UserQuery>();
  set queries(ListBuilder<UserQuery> queries) => _$this._queries = queries;

  ListBuilder<User> _users;
  ListBuilder<User> get users => _$this._users ??= new ListBuilder<User>();
  set users(ListBuilder<User> users) => _$this._users = users;

  UsersStateBuilder();

  UsersStateBuilder get _$this {
    if (_$v != null) {
      _currentUser = _$v.currentUser?.toBuilder();
      _queries = _$v.queries?.toBuilder();
      _users = _$v.users?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersState other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$UsersState;
  }

  @override
  void update(void updates(UsersStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$UsersState build() {
    _$UsersState _$result;
    try {
      _$result = _$v ??
          new _$UsersState._(
              currentUser: currentUser.build(),
              queries: queries.build(),
              users: users.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'currentUser';
        currentUser.build();
        _$failedField = 'queries';
        queries.build();
        _$failedField = 'users';
        users.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UsersState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
