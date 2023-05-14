// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reservation_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReservationStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() available,
    required TResult Function() reserved,
    required TResult Function(String username) reservedByUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? available,
    TResult? Function()? reserved,
    TResult? Function(String username)? reservedByUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? available,
    TResult Function()? reserved,
    TResult Function(String username)? reservedByUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReservationStatusAvailable value) available,
    required TResult Function(ReservationStatusReserved value) reserved,
    required TResult Function(ReservationStatusReservedByUser value)
        reservedByUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReservationStatusAvailable value)? available,
    TResult? Function(ReservationStatusReserved value)? reserved,
    TResult? Function(ReservationStatusReservedByUser value)? reservedByUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReservationStatusAvailable value)? available,
    TResult Function(ReservationStatusReserved value)? reserved,
    TResult Function(ReservationStatusReservedByUser value)? reservedByUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationStatusCopyWith<$Res> {
  factory $ReservationStatusCopyWith(
          ReservationStatus value, $Res Function(ReservationStatus) then) =
      _$ReservationStatusCopyWithImpl<$Res, ReservationStatus>;
}

/// @nodoc
class _$ReservationStatusCopyWithImpl<$Res, $Val extends ReservationStatus>
    implements $ReservationStatusCopyWith<$Res> {
  _$ReservationStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ReservationStatusAvailableCopyWith<$Res> {
  factory _$$ReservationStatusAvailableCopyWith(
          _$ReservationStatusAvailable value,
          $Res Function(_$ReservationStatusAvailable) then) =
      __$$ReservationStatusAvailableCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReservationStatusAvailableCopyWithImpl<$Res>
    extends _$ReservationStatusCopyWithImpl<$Res, _$ReservationStatusAvailable>
    implements _$$ReservationStatusAvailableCopyWith<$Res> {
  __$$ReservationStatusAvailableCopyWithImpl(
      _$ReservationStatusAvailable _value,
      $Res Function(_$ReservationStatusAvailable) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReservationStatusAvailable implements ReservationStatusAvailable {
  const _$ReservationStatusAvailable();

  @override
  String toString() {
    return 'ReservationStatus.available()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReservationStatusAvailable);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() available,
    required TResult Function() reserved,
    required TResult Function(String username) reservedByUser,
  }) {
    return available();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? available,
    TResult? Function()? reserved,
    TResult? Function(String username)? reservedByUser,
  }) {
    return available?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? available,
    TResult Function()? reserved,
    TResult Function(String username)? reservedByUser,
    required TResult orElse(),
  }) {
    if (available != null) {
      return available();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReservationStatusAvailable value) available,
    required TResult Function(ReservationStatusReserved value) reserved,
    required TResult Function(ReservationStatusReservedByUser value)
        reservedByUser,
  }) {
    return available(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReservationStatusAvailable value)? available,
    TResult? Function(ReservationStatusReserved value)? reserved,
    TResult? Function(ReservationStatusReservedByUser value)? reservedByUser,
  }) {
    return available?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReservationStatusAvailable value)? available,
    TResult Function(ReservationStatusReserved value)? reserved,
    TResult Function(ReservationStatusReservedByUser value)? reservedByUser,
    required TResult orElse(),
  }) {
    if (available != null) {
      return available(this);
    }
    return orElse();
  }
}

abstract class ReservationStatusAvailable implements ReservationStatus {
  const factory ReservationStatusAvailable() = _$ReservationStatusAvailable;
}

/// @nodoc
abstract class _$$ReservationStatusReservedCopyWith<$Res> {
  factory _$$ReservationStatusReservedCopyWith(
          _$ReservationStatusReserved value,
          $Res Function(_$ReservationStatusReserved) then) =
      __$$ReservationStatusReservedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReservationStatusReservedCopyWithImpl<$Res>
    extends _$ReservationStatusCopyWithImpl<$Res, _$ReservationStatusReserved>
    implements _$$ReservationStatusReservedCopyWith<$Res> {
  __$$ReservationStatusReservedCopyWithImpl(_$ReservationStatusReserved _value,
      $Res Function(_$ReservationStatusReserved) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReservationStatusReserved implements ReservationStatusReserved {
  const _$ReservationStatusReserved();

  @override
  String toString() {
    return 'ReservationStatus.reserved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReservationStatusReserved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() available,
    required TResult Function() reserved,
    required TResult Function(String username) reservedByUser,
  }) {
    return reserved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? available,
    TResult? Function()? reserved,
    TResult? Function(String username)? reservedByUser,
  }) {
    return reserved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? available,
    TResult Function()? reserved,
    TResult Function(String username)? reservedByUser,
    required TResult orElse(),
  }) {
    if (reserved != null) {
      return reserved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReservationStatusAvailable value) available,
    required TResult Function(ReservationStatusReserved value) reserved,
    required TResult Function(ReservationStatusReservedByUser value)
        reservedByUser,
  }) {
    return reserved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReservationStatusAvailable value)? available,
    TResult? Function(ReservationStatusReserved value)? reserved,
    TResult? Function(ReservationStatusReservedByUser value)? reservedByUser,
  }) {
    return reserved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReservationStatusAvailable value)? available,
    TResult Function(ReservationStatusReserved value)? reserved,
    TResult Function(ReservationStatusReservedByUser value)? reservedByUser,
    required TResult orElse(),
  }) {
    if (reserved != null) {
      return reserved(this);
    }
    return orElse();
  }
}

abstract class ReservationStatusReserved implements ReservationStatus {
  const factory ReservationStatusReserved() = _$ReservationStatusReserved;
}

/// @nodoc
abstract class _$$ReservationStatusReservedByUserCopyWith<$Res> {
  factory _$$ReservationStatusReservedByUserCopyWith(
          _$ReservationStatusReservedByUser value,
          $Res Function(_$ReservationStatusReservedByUser) then) =
      __$$ReservationStatusReservedByUserCopyWithImpl<$Res>;
  @useResult
  $Res call({String username});
}

/// @nodoc
class __$$ReservationStatusReservedByUserCopyWithImpl<$Res>
    extends _$ReservationStatusCopyWithImpl<$Res,
        _$ReservationStatusReservedByUser>
    implements _$$ReservationStatusReservedByUserCopyWith<$Res> {
  __$$ReservationStatusReservedByUserCopyWithImpl(
      _$ReservationStatusReservedByUser _value,
      $Res Function(_$ReservationStatusReservedByUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
  }) {
    return _then(_$ReservationStatusReservedByUser(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReservationStatusReservedByUser
    implements ReservationStatusReservedByUser {
  const _$ReservationStatusReservedByUser({required this.username});

  @override
  final String username;

  @override
  String toString() {
    return 'ReservationStatus.reservedByUser(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReservationStatusReservedByUser &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReservationStatusReservedByUserCopyWith<_$ReservationStatusReservedByUser>
      get copyWith => __$$ReservationStatusReservedByUserCopyWithImpl<
          _$ReservationStatusReservedByUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() available,
    required TResult Function() reserved,
    required TResult Function(String username) reservedByUser,
  }) {
    return reservedByUser(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? available,
    TResult? Function()? reserved,
    TResult? Function(String username)? reservedByUser,
  }) {
    return reservedByUser?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? available,
    TResult Function()? reserved,
    TResult Function(String username)? reservedByUser,
    required TResult orElse(),
  }) {
    if (reservedByUser != null) {
      return reservedByUser(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReservationStatusAvailable value) available,
    required TResult Function(ReservationStatusReserved value) reserved,
    required TResult Function(ReservationStatusReservedByUser value)
        reservedByUser,
  }) {
    return reservedByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReservationStatusAvailable value)? available,
    TResult? Function(ReservationStatusReserved value)? reserved,
    TResult? Function(ReservationStatusReservedByUser value)? reservedByUser,
  }) {
    return reservedByUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReservationStatusAvailable value)? available,
    TResult Function(ReservationStatusReserved value)? reserved,
    TResult Function(ReservationStatusReservedByUser value)? reservedByUser,
    required TResult orElse(),
  }) {
    if (reservedByUser != null) {
      return reservedByUser(this);
    }
    return orElse();
  }
}

abstract class ReservationStatusReservedByUser implements ReservationStatus {
  const factory ReservationStatusReservedByUser(
      {required final String username}) = _$ReservationStatusReservedByUser;

  String get username;
  @JsonKey(ignore: true)
  _$$ReservationStatusReservedByUserCopyWith<_$ReservationStatusReservedByUser>
      get copyWith => throw _privateConstructorUsedError;
}
