import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:popular_movies/presentation/features/movie_detail/view_model/movie_details_view_model.dart';
import 'package:popular_movies/presentation/features/movies/state/movie_state.dart';
import 'package:popular_movies/presentation/features/movies/view_model/movies_view_model.dart';

import '../../../../utils/mocks/mock_classes.dart';

void main() {
  late MockGetMoviesUseCase mockGetMoviesUseCase;
  late MoviesViewModel viewModel;

  setUp(() {
    mockGetMoviesUseCase = MockGetMoviesUseCase();

    viewModel = MoviesViewModel(mockGetMoviesUseCase);
  });

  blocTest<MoviesViewModel, MoviesState>(
    'emits correct states when getMovies is called',
    build: () {
      // Create mock models
      final mockMovie = MockMovie();
      when(() => mockMovie.title).thenReturn('Test Movie');

      when(() => mockGetMoviesUseCase.call()).thenAnswer(
        (_) async => Right([mockMovie]),
      );

      return viewModel;
    },
    act: (bloc) => bloc.getMovies(),
    expect: () => [
      isA<MoviesState>().having(
        (state) => state.moviesResultState,
        'moviesResultState',
        MoviesResultState.loading(),
      ),
      isA<MoviesState>().having(
        (state) => (state.moviesResultState as MoviesResult).movies.first.title,
        'title',
        'Test Movie',
      ),
    ],
    verify: (_) {
      verify(() => mockGetMoviesUseCase.call()).called(1);
    },
  );

  tearDown(() {
    viewModel.close();
  });
}
