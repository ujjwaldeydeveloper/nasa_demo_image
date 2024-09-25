import 'package:flutter/material.dart';
import 'package:nasa_image_demo/data/api_constants.dart';
import 'package:nasa_image_demo/data/remote_data/api_service.dart';
import 'package:nasa_image_demo/domain/repository/image_data_repository.dart';

import '../model/image_data_model.dart';

class ImagRepositoryImpl implements ImageDataRepository {
  final FetchApiService _fetchApiService;

  ImagRepositoryImpl(this._fetchApiService);

  @override
  Future<ImageDataModel?> fetchImageData() async {
    try {
      final httpResponse = await _fetchApiService.fetchImageData(
        apiKey: ApiConstants.apiKey,
      );
      // Handle success response
      if (httpResponse.response.statusCode == 200) {
        final data = httpResponse.response.data;
        return ImageDataModel.fromJson(data as Map<String, dynamic>);
      } else {
        // Handle error response
        debugPrint(
            'Request failed with status: ${httpResponse.response.statusCode}');
        return null;
      }
    } catch (e) {
      debugPrint('Failed to load image: $e');
      return null;
    }
  }
}
