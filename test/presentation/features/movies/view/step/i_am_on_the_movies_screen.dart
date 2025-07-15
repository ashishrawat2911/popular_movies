import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';
import 'package:popular_movies/domain/usecases/get_movie_detail_use_case.dart';
import 'package:popular_movies/domain/usecases/get_movie_videos_use_case.dart';
import 'package:popular_movies/presentation/features/movie_detail/view_model/movie_details_view_model.dart';
import 'package:popular_movies/presentation/features/movies/view_model/movies_view_model.dart';

class MockGetMovieDetailUseCase extends Mock implements GetMovieDetailUseCase {}

class MockGetMovieVideosUseCase extends Mock implements GetMovieVideosUseCase {}

/// Usage: I am on the Movie Screen
Future<void> iAmOnTheMoviesScreen(WidgetTester tester) async {
  await GetIt.I.reset();
  GetIt.I.registerSingleton<GetMovieDetailUseCase>(MockGetMovieDetailUseCase());
  GetIt.I.registerSingleton<GetMovieVideosUseCase>(MockGetMovieVideosUseCase());
  GetIt.I.registerSingleton<MoviesViewModel>(MoviesViewModel(GetIt.I.get()));
  GetIt.I.registerSingleton<MoviesDetailsViewModel>(MoviesDetailsViewModel(
    GetIt.I.get(),
    GetIt.I.get(),
  ));
}
