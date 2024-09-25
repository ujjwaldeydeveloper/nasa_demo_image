
import 'package:nasa_image_demo/domain/entity/image_entity.dart';

abstract class ImageDataRepository {
  // API method to fetch image data
  
  Future<ImageEntity?> fetchImageData();
}