import 'package:equatable/equatable.dart';
import 'package:nasa_image_demo/domain/entity/image_entity.dart';

abstract class RemoteImageState extends Equatable{}

class RemoteImageInitial extends RemoteImageState {
  @override
  List<Object?> get props => [];
}

class RemoteImageLoading extends RemoteImageState {
  @override
  List<Object?> get props => [];
}

class RemoteImageError extends RemoteImageState {
  final String? message;

  RemoteImageError(this.message);
  @override
  List<Object?> get props => [message];
}


class RemoteImageLoaded extends RemoteImageState {
  final ImageEntity imageEntity;

  RemoteImageLoaded(this.imageEntity);
  @override
  List<Object?> get props => [imageEntity];
}