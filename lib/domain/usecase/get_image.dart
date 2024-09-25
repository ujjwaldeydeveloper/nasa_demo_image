import '../../core/usecases/usecase.dart';
import '../entity/image_entity.dart';
import '../repository/image_data_repository.dart';

class GetImageUseCase implements UseCase<ImageEntity?, void> {
  final ImageDataRepository repository;

  GetImageUseCase(this.repository);

  @override
  Future<ImageEntity?> call({void params})  {
    return repository.fetchImageData();
  }
}