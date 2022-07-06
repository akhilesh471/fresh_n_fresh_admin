// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticationEvent {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) authenticate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? authenticate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? authenticate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticateEvent value) authenticate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthenticateEvent value)? authenticate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticateEvent value)? authenticate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticationEventCopyWith<AuthenticationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  final AuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(AuthenticationEvent) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AuthenticateEventCopyWith<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  factory _$$_AuthenticateEventCopyWith(_$_AuthenticateEvent value,
          $Res Function(_$_AuthenticateEvent) then) =
      __$$_AuthenticateEventCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password});
}

/// @nodoc
class __$$_AuthenticateEventCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$$_AuthenticateEventCopyWith<$Res> {
  __$$_AuthenticateEventCopyWithImpl(
      _$_AuthenticateEvent _value, $Res Function(_$_AuthenticateEvent) _then)
      : super(_value, (v) => _then(v as _$_AuthenticateEvent));

  @override
  _$_AuthenticateEvent get _value => super._value as _$_AuthenticateEvent;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_AuthenticateEvent(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthenticateEvent implements _AuthenticateEvent {
  const _$_AuthenticateEvent({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthenticationEvent.authenticate(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticateEvent &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_AuthenticateEventCopyWith<_$_AuthenticateEvent> get copyWith =>
      __$$_AuthenticateEventCopyWithImpl<_$_AuthenticateEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) authenticate,
  }) {
    return authenticate(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? authenticate,
  }) {
    return authenticate?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? authenticate,
    required TResult orElse(),
  }) {
    if (authenticate != null) {
      return authenticate(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticateEvent value) authenticate,
  }) {
    return authenticate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthenticateEvent value)? authenticate,
  }) {
    return authenticate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticateEvent value)? authenticate,
    required TResult orElse(),
  }) {
    if (authenticate != null) {
      return authenticate(this);
    }
    return orElse();
  }
}

abstract class _AuthenticateEvent implements AuthenticationEvent {
  const factory _AuthenticateEvent(
      {required final String email,
      required final String password}) = _$_AuthenticateEvent;

  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AuthenticateEventCopyWith<_$_AuthenticateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthenticationState {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticationStateCopyWith<AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AuthenticatonStateCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$_AuthenticatonStateCopyWith(_$_AuthenticatonState value,
          $Res Function(_$_AuthenticatonState) then) =
      __$$_AuthenticatonStateCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password});
}

/// @nodoc
class __$$_AuthenticatonStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$$_AuthenticatonStateCopyWith<$Res> {
  __$$_AuthenticatonStateCopyWithImpl(
      _$_AuthenticatonState _value, $Res Function(_$_AuthenticatonState) _then)
      : super(_value, (v) => _then(v as _$_AuthenticatonState));

  @override
  _$_AuthenticatonState get _value => super._value as _$_AuthenticatonState;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_AuthenticatonState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthenticatonState implements _AuthenticatonState {
  const _$_AuthenticatonState({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthenticationState(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticatonState &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_AuthenticatonStateCopyWith<_$_AuthenticatonState> get copyWith =>
      __$$_AuthenticatonStateCopyWithImpl<_$_AuthenticatonState>(
          this, _$identity);
}

abstract class _AuthenticatonState implements AuthenticationState {
  const factory _AuthenticatonState(
      {required final String email,
      required final String password}) = _$_AuthenticatonState;

  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AuthenticatonStateCopyWith<_$_AuthenticatonState> get copyWith =>
      throw _privateConstructorUsedError;
}
