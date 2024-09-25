import 'package:json_annotation/json_annotation.dart';
import 'package:nasa_image_demo/domain/entity/image_entity.dart';
part 'image_data_model.g.dart';

@JsonSerializable()
class ImageDataModel extends ImageEntity {
  const ImageDataModel({
    String? copyright,
    DateTime? date,
    String? explanation,
    String? hdurl,
    String? mediaType,
    String? serviceVersion,
    String? title,
    String? url,
  }) : super(
          copyright: copyright,
          date: date,
          explanation: explanation,
          hdurl: hdurl,
          mediaType: mediaType,
          serviceVersion: serviceVersion,
          title: title,
          url: url,
        );

  ImageDataModel copyWith({
    String? copyright,
    DateTime? date,
    String? explanation,
    String? hdurl,
    String? mediaType,
    String? serviceVersion,
    String? title,
    String? url,
  }) =>
      ImageDataModel(
        copyright: copyright ?? this.copyright,
        date: date ?? this.date,
        explanation: explanation ?? this.explanation,
        hdurl: hdurl ?? this.hdurl,
        mediaType: mediaType ?? this.mediaType,
        serviceVersion: serviceVersion ?? this.serviceVersion,
        title: title ?? this.title,
        url: url ?? this.url,
      );

  factory ImageDataModel.fromJson(Map<String, dynamic> json) =>
      _$ImageDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$ImageDataModelToJson(this);
}
