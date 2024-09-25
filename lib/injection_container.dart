import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:nasa_image_demo/data/remote_data/api_service.dart';

import 'data/repository/image_repository_impl.dart';
import 'domain/repository/image_data_repository.dart';
import 'domain/usecase/get_image.dart';
import 'presentation/bloc/remote_image_bloc.dart';

final s1 = GetIt.instance;

Future<void> initalizeDependencyInjection() async {

  //Dio
  s1.registerSingleton<Dio>(Dio());
  
  s1.registerSingleton<FetchApiService>(FetchApiService(s1()));
  s1.registerFactory<GetImageUseCase>(() => GetImageUseCase(s1()));
  s1.registerFactory<RemoteImageBloc>(() => RemoteImageBloc(s1()));
  s1.registerFactory<ImageDataRepository>(() => ImagRepositoryImpl(s1()));
}
