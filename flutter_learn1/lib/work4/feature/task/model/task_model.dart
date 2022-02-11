import 'package:json_annotation/json_annotation.dart';

part 'task_model.g.dart';
// iki sınıfın bir biri ile iltisimi icin part kullanilir
@JsonSerializable()
class TaskModel {
  int? code;
  String? description;
  String? imageUrl;
  TaskModel();

  factory TaskModel.fromJson(Map<String, dynamic> json) {
    return _$TaskModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$TaskModelToJson(this);
  }
}
