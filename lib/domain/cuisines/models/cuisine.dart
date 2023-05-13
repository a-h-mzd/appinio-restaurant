import 'package:freezed_annotation/freezed_annotation.dart';

part 'cuisine.freezed.dart';
part 'cuisine.g.dart';

@freezed
class CuisineModel with _$CuisineModel {
  factory CuisineModel({
    required final String name,
    required final String image,
    required final List<String> ingredients,
    required final List<String> procedure,
  }) = _CuisineModel;

  factory CuisineModel.fromJson(Map<String, Object?> json) =>
      _$CuisineModelFromJson(json);
}
