import 'package:dio/dio.dart';
import 'package:nasa_image_demo/data/api_constants.dart';
import 'package:retrofit/retrofit.dart';

import '../model/image_data_model.dart';
part 'api_service.g.dart';


@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class FetchApiService {
  factory FetchApiService(Dio dio) = _FetchApiService;

  @GET(ApiConstants.endPoint)
  Future<HttpResponse<ImageDataModel>> fetchImageData({
    @Query('api_key') String? apiKey,
    });
}
