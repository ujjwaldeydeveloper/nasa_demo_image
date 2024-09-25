import 'package:equatable/equatable.dart';

class ImageEntity extends Equatable {
  final String? copyright;
  final DateTime? date;
  final String? explanation;
  final String? hdurl;
  final String? mediaType;
  final String? serviceVersion;
  final String? title;
  final String? url;

  const ImageEntity({
    this.copyright,
    this.date,
    this.explanation,
    this.hdurl,
    this.mediaType,
    this.serviceVersion,
    this.title,
    this.url,
  });

  @override
  List<Object?> get props {
    return [
      copyright,
      title,
      serviceVersion,
      mediaType,
      hdurl,
      explanation,
      date,
      url,
    ];
  }
}
