// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i895;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:popular_movies/core/services/connectivity_service.dart'
    as _i274;
import 'package:popular_movies/data/repository/movie_repository_impl.dart'
    as _i959;
import 'package:popular_movies/data/source/remote/interceptor/api_auth_interceptor.dart'
    as _i665;
import 'package:popular_movies/data/source/remote/service/movie_api_service.dart'
    as _i58;
import 'package:popular_movies/di/module/network_module.dart' as _i209;
import 'package:popular_movies/domain/repository/movie_repository.dart'
    as _i959;
import 'package:popular_movies/domain/usecases/get_movie_detail_use_case.dart'
    as _i578;
import 'package:popular_movies/domain/usecases/get_movie_videos_use_case.dart'
    as _i70;
import 'package:popular_movies/domain/usecases/get_movies_use_case.dart'
    as _i153;
import 'package:popular_movies/domain/usecases/impl/get_movie_detail_use_case_impl.dart'
    as _i792;
import 'package:popular_movies/domain/usecases/impl/get_movie_videos_use_case_impl.dart'
    as _i1023;
import 'package:popular_movies/domain/usecases/impl/get_movies_use_case_impl.dart'
    as _i866;
import 'package:popular_movies/presentation/features/movie_detail/view_model/movie_details_view_model.dart'
    as _i873;
import 'package:popular_movies/presentation/features/movies/view_model/movies_view_model.dart'
    as _i503;
import 'package:popular_movies/routes/app_router.dart' as _i736;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final networkModule = _$NetworkModule();
    gh.singleton<_i895.Connectivity>(() => networkModule.connectivity);
    gh.singleton<_i736.AppRouter>(() => _i736.AppRouter());
    gh.factory<String>(
      () => networkModule.ApiKey,
      instanceName: 'api_key',
    );
    gh.lazySingleton<_i665.MovieApiAuthInterceptor>(() =>
        _i665.MovieApiAuthInterceptor(gh<String>(instanceName: 'api_key')));
    gh.singleton<_i274.ConnectivityService>(
        () => _i274.ConnectivityService(gh<_i895.Connectivity>()));
    gh.lazySingleton<_i361.Dio>(
        () => networkModule.dio(gh<_i665.MovieApiAuthInterceptor>()));
    gh.singleton<_i58.MovieApiService>(
        () => _i58.MovieApiService(gh<_i361.Dio>()));
    gh.factory<_i959.MovieRepository>(
        () => _i959.MovieRepositoryImpl(gh<_i58.MovieApiService>()));
    gh.factory<_i153.GetMoviesUseCase>(
        () => _i866.GetMoviesUseCaseImpl(gh<_i959.MovieRepository>()));
    gh.factory<_i578.GetMovieDetailUseCase>(
        () => _i792.GetMovieDetailUseCaseImpl(gh<_i959.MovieRepository>()));
    gh.factory<_i503.MoviesViewModel>(
        () => _i503.MoviesViewModel(gh<_i153.GetMoviesUseCase>()));
    gh.factory<_i70.GetMovieVideosUseCase>(
        () => _i1023.GetMovieVideosUseCaseImpl(gh<_i959.MovieRepository>()));
    gh.factory<_i873.MoviesDetailsViewModel>(() => _i873.MoviesDetailsViewModel(
          gh<_i578.GetMovieDetailUseCase>(),
          gh<_i70.GetMovieVideosUseCase>(),
        ));
    return this;
  }
}

class _$NetworkModule extends _i209.NetworkModule {}
