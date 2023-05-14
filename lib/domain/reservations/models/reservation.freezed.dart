// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reservation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReservationModel _$ReservationModelFromJson(Map<String, dynamic> json) {
  return _ReservationModel.fromJson(json);
}

/// @nodoc
mixin _$ReservationModel {
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReservationModelCopyWith<ReservationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationModelCopyWith<$Res> {
  factory $ReservationModelCopyWith(
          ReservationModel value, $Res Function(ReservationModel) then) =
      _$ReservationModelCopyWithImpl<$Res, ReservationModel>;
  @useResult
  $Res call({@JsonKey(name: 'user_id') String userId, String username});
}

/// @nodoc
class _$ReservationModelCopyWithImpl<$Res, $Val extends ReservationModel>
    implements $ReservationModelCopyWith<$Res> {
  _$ReservationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReservationModelCopyWith<$Res>
    implements $ReservationModelCopyWith<$Res> {
  factory _$$_ReservationModelCopyWith(
          _$_ReservationModel value, $Res Function(_$_ReservationModel) then) =
      __$$_ReservationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'user_id') String userId, String username});
}

/// @nodoc
class __$$_ReservationModelCopyWithImpl<$Res>
    extends _$ReservationModelCopyWithImpl<$Res, _$_ReservationModel>
    implements _$$_ReservationModelCopyWith<$Res> {
  __$$_ReservationModelCopyWithImpl(
      _$_ReservationModel _value, $Res Function(_$_ReservationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? username = null,
  }) {
    return _then(_$_ReservationModel(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReservationModel
    with DiagnosticableTreeMixin
    implements _ReservationModel {
  const _$_ReservationModel(
      {@JsonKey(name: 'user_id') required this.userId, required this.username});

  factory _$_ReservationModel.fromJson(Map<String, dynamic> json) =>
      _$$_ReservationModelFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  final String username;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReservationModel(userId: $userId, username: $username)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReservationModel'))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('username', username));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReservationModel &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReservationModelCopyWith<_$_ReservationModel> get copyWith =>
      __$$_ReservationModelCopyWithImpl<_$_ReservationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReservationModelToJson(
      this,
    );
  }
}

abstract class _ReservationModel implements ReservationModel {
  const factory _ReservationModel(
      {@JsonKey(name: 'user_id') required final String userId,
      required final String username}) = _$_ReservationModel;

  factory _ReservationModel.fromJson(Map<String, dynamic> json) =
      _$_ReservationModel.fromJson;

  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$_ReservationModelCopyWith<_$_ReservationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
