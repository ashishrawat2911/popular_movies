import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:popular_movies/res/constants.dart';

@lazySingleton
class MovieApiAuthInterceptor extends Interceptor {
  MovieApiAuthInterceptor(
    @Named(Constants.apiKeyName) this._apiKey,
  );

  final String _apiKey;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters['api_key'] = _apiKey;
    super.onRequest(options, handler);
  }
}
