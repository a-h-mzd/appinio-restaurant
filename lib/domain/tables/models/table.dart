import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'table.freezed.dart';
part 'table.g.dart';

@freezed
class TableModel with _$TableModel {
  const factory TableModel({
    required final String name,
    @JsonKey(name: 'chair_count') required final num chairCount,
  }) = _TableModel;

  factory TableModel.fromJson(Map<String, Object?> json) =>
      _$TableModelFromJson(json);
}

extension TableQuery on Iterable<QueryDocumentSnapshot<TableModel>> {
  Map<String, TableModel> get asTableListMap {
    return Map.fromEntries(map((e) => MapEntry(e.id, e.data())));
  }
}
