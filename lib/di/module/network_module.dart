import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:popular_movies/data/source/remote/interceptor/api_auth_interceptor.dart';
import 'package:popular_movies/data/source/remote/service/movie_api_service.dart';
import 'package:popular_movies/res/constants.dart';

@module
abstract class NetworkModule {
  @singleton
  Connectivity get connectivity => Connectivity();

  @Named(Constants.apiKeyName)
  String get ApiKey => const String.fromEnvironment('MOVIE_API_KEY');

  @lazySingleton
  Dio dio(
    MovieApiAuthInterceptor movieApiAuthInterceptor,
  ) =>
      Dio(BaseOptions(
        baseUrl: Constants.apiBaseUrl,
      ))
        ..interceptors.add(movieApiAuthInterceptor)
        ..interceptors.add(
          LogInterceptor(
              responseBody: true,
              error: true,
              requestHeader: true,
              responseHeader: false,
              request: true,
              requestBody: true),
        );
}
