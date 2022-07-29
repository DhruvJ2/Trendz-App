import 'package:json_annotation/json_annotation.dart';
import 'package:trendz_app/models/index_model.dart';
part 'data.g.dart';

// class ImgFetch {
//   late List<String> img;
//   late List<String> description;
//   ImgFetch({
//     required this.img,
//     required this.description,
//   });

//   factory ImgFetch.fromJson(Map<String, dynamic> json) {
//     return ImgFetch(
//       img: json["img"],
//       description: json["description"],
//     );
//   }
// }

@JsonSerializable()
class FlipkartModel {
  late IndexModel img;
  late IndexModel name;
  late IndexModel price;
  late IndexModel rating;

  FlipkartModel({
    required this.img,
    required this.name,
    required this.price,
    required this.rating,
  });

  factory FlipkartModel.fromJson(Map<String, dynamic> json) =>
      _$FlipkartModelFromJson(json);

  Map<String, dynamic> toJson() => _$FlipkartModelToJson(this);
}
