import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'table.freezed.dart';
part 'table.g.dart';

@freezed
class TableModel with _$TableModel {
  factory TableModel({
    required final String name,
    @JsonKey(name: 'chair_count') required final num chairCount,
  }) = _TableModel;

  factory TableModel.fromJson(Map<String, Object?> json) =>
      _$TableModelFromJson(json);
}

extension TableQuery on QueryDocumentSnapshot<TableModel> {
  String get name => data().name;
  int get chairCount => data().chairCount.toInt();

  Map<String, dynamic> modelJson() => data().toJson();

  Map<String, dynamic> toJson() {
    final queryInfo = {'id': id};
    return modelJson()..addAll(queryInfo);
  }
}
