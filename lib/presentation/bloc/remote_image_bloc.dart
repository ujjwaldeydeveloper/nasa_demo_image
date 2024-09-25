import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecase/get_image.dart';
import 'remote_image_event.dart';
import 'remote_image_state.dart';

class RemoteImageBloc extends Bloc<RemoteImageEvent, RemoteImageState> {
  final GetImageUseCase getImageUseCase;

  RemoteImageBloc(this.getImageUseCase) : super(RemoteImageInitial()) {
    on<GetImage>(_onRemoteImageRequested);
  }

  void _onRemoteImageRequested(
      GetImage event, Emitter<RemoteImageState> emit) async {
    emit(RemoteImageLoading());

    final result = await getImageUseCase();
    if (result?.url == null) {
      emit(RemoteImageError('No image found'));
    } else {
      emit(RemoteImageLoaded(result!));
    }
  }
}
