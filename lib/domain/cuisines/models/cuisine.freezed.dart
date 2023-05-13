// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cuisine.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CuisineModel _$CuisineModelFromJson(Map<String, dynamic> json) {
  return _CuisineModel.fromJson(json);
}

/// @nodoc
mixin _$CuisineModel {
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  List<String> get ingredients => throw _privateConstructorUsedError;
  List<String> get procedure => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CuisineModelCopyWith<CuisineModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CuisineModelCopyWith<$Res> {
  factory $CuisineModelCopyWith(
          CuisineModel value, $Res Function(CuisineModel) then) =
      _$CuisineModelCopyWithImpl<$Res, CuisineModel>;
  @useResult
  $Res call(
      {String name,
      String image,
      List<String> ingredients,
      List<String> procedure});
}

/// @nodoc
class _$CuisineModelCopyWithImpl<$Res, $Val extends CuisineModel>
    implements $CuisineModelCopyWith<$Res> {
  _$CuisineModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? image = null,
    Object? ingredients = null,
    Object? procedure = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>,
      procedure: null == procedure
          ? _value.procedure
          : procedure // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CuisineModelCopyWith<$Res>
    implements $CuisineModelCopyWith<$Res> {
  factory _$$_CuisineModelCopyWith(
          _$_CuisineModel value, $Res Function(_$_CuisineModel) then) =
      __$$_CuisineModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String image,
      List<String> ingredients,
      List<String> procedure});
}

/// @nodoc
class __$$_CuisineModelCopyWithImpl<$Res>
    extends _$CuisineModelCopyWithImpl<$Res, _$_CuisineModel>
    implements _$$_CuisineModelCopyWith<$Res> {
  __$$_CuisineModelCopyWithImpl(
      _$_CuisineModel _value, $Res Function(_$_CuisineModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? image = null,
    Object? ingredients = null,
    Object? procedure = null,
  }) {
    return _then(_$_CuisineModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>,
      procedure: null == procedure
          ? _value._procedure
          : procedure // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CuisineModel implements _CuisineModel {
  _$_CuisineModel(
      {required this.name,
      required this.image,
      required final List<String> ingredients,
      required final List<String> procedure})
      : _ingredients = ingredients,
        _procedure = procedure;

  factory _$_CuisineModel.fromJson(Map<String, dynamic> json) =>
      _$$_CuisineModelFromJson(json);

  @override
  final String name;
  @override
  final String image;
  final List<String> _ingredients;
  @override
  List<String> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  final List<String> _procedure;
  @override
  List<String> get procedure {
    if (_procedure is EqualUnmodifiableListView) return _procedure;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_procedure);
  }

  @override
  String toString() {
    return 'CuisineModel(name: $name, image: $image, ingredients: $ingredients, procedure: $procedure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CuisineModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            const DeepCollectionEquality()
                .equals(other._procedure, _procedure));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      image,
      const DeepCollectionEquality().hash(_ingredients),
      const DeepCollectionEquality().hash(_procedure));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CuisineModelCopyWith<_$_CuisineModel> get copyWith =>
      __$$_CuisineModelCopyWithImpl<_$_CuisineModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CuisineModelToJson(
      this,
    );
  }
}

abstract class _CuisineModel implements CuisineModel {
  factory _CuisineModel(
      {required final String name,
      required final String image,
      required final List<String> ingredients,
      required final List<String> procedure}) = _$_CuisineModel;

  factory _CuisineModel.fromJson(Map<String, dynamic> json) =
      _$_CuisineModel.fromJson;

  @override
  String get name;
  @override
  String get image;
  @override
  List<String> get ingredients;
  @override
  List<String> get procedure;
  @override
  @JsonKey(ignore: true)
  _$$_CuisineModelCopyWith<_$_CuisineModel> get copyWith =>
      throw _privateConstructorUsedError;
}
