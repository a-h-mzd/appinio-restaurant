// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TableModel _$TableModelFromJson(Map<String, dynamic> json) {
  return _TableModel.fromJson(json);
}

/// @nodoc
mixin _$TableModel {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'chair_count')
  num get numberOfChairs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TableModelCopyWith<TableModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableModelCopyWith<$Res> {
  factory $TableModelCopyWith(
          TableModel value, $Res Function(TableModel) then) =
      _$TableModelCopyWithImpl<$Res, TableModel>;
  @useResult
  $Res call({String name, @JsonKey(name: 'chair_count') num numberOfChairs});
}

/// @nodoc
class _$TableModelCopyWithImpl<$Res, $Val extends TableModel>
    implements $TableModelCopyWith<$Res> {
  _$TableModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? numberOfChairs = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfChairs: null == numberOfChairs
          ? _value.numberOfChairs
          : numberOfChairs // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TableModelCopyWith<$Res>
    implements $TableModelCopyWith<$Res> {
  factory _$$_TableModelCopyWith(
          _$_TableModel value, $Res Function(_$_TableModel) then) =
      __$$_TableModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, @JsonKey(name: 'chair_count') num numberOfChairs});
}

/// @nodoc
class __$$_TableModelCopyWithImpl<$Res>
    extends _$TableModelCopyWithImpl<$Res, _$_TableModel>
    implements _$$_TableModelCopyWith<$Res> {
  __$$_TableModelCopyWithImpl(
      _$_TableModel _value, $Res Function(_$_TableModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? numberOfChairs = null,
  }) {
    return _then(_$_TableModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfChairs: null == numberOfChairs
          ? _value.numberOfChairs
          : numberOfChairs // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TableModel extends _TableModel with DiagnosticableTreeMixin {
  const _$_TableModel(
      {required this.name,
      @JsonKey(name: 'chair_count') required this.numberOfChairs})
      : super._();

  factory _$_TableModel.fromJson(Map<String, dynamic> json) =>
      _$$_TableModelFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: 'chair_count')
  final num numberOfChairs;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TableModel(name: $name, numberOfChairs: $numberOfChairs)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TableModel'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('numberOfChairs', numberOfChairs));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TableModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.numberOfChairs, numberOfChairs) ||
                other.numberOfChairs == numberOfChairs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, numberOfChairs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TableModelCopyWith<_$_TableModel> get copyWith =>
      __$$_TableModelCopyWithImpl<_$_TableModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TableModelToJson(
      this,
    );
  }
}

abstract class _TableModel extends TableModel {
  const factory _TableModel(
          {required final String name,
          @JsonKey(name: 'chair_count') required final num numberOfChairs}) =
      _$_TableModel;
  const _TableModel._() : super._();

  factory _TableModel.fromJson(Map<String, dynamic> json) =
      _$_TableModel.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: 'chair_count')
  num get numberOfChairs;
  @override
  @JsonKey(ignore: true)
  _$$_TableModelCopyWith<_$_TableModel> get copyWith =>
      throw _privateConstructorUsedError;
}
