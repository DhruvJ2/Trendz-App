import 'package:json_annotation/json_annotation.dart';

part 'index_model.g.dart';

@JsonSerializable()
class IndexModel {
  late List<dynamic> index;

  IndexModel({required this.index});

  factory IndexModel.fromJson(Map<String, dynamic> json) =>
      _$IndexModelFromJson(json);

  Map<String, dynamic> toJson() => _$IndexModelToJson(this);
}
