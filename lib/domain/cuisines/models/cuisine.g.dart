// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cuisine.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CuisineModel _$$_CuisineModelFromJson(Map json) => _$_CuisineModel(
      name: json['name'] as String,
      image: json['image'] as String,
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      procedure:
          (json['procedure'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_CuisineModelToJson(_$_CuisineModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'ingredients': instance.ingredients,
      'procedure': instance.procedure,
    };
