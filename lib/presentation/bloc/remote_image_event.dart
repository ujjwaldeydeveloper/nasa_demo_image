import 'package:equatable/equatable.dart';

abstract class RemoteImageEvent extends Equatable {
  const RemoteImageEvent();
}

class GetImage extends RemoteImageEvent {
  @override
  List<Object?> get props => [];
} 