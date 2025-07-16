import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:popular_movies/presentation/features/movie_detail/view_model/movie_details_view_model.dart';

import '../../../../utils/mocks/mock_classes.dart';

void main() {
  late MockGetMovieDetailUseCase mockGetMovieDetailUseCase;
  late MockGetMovieVideosUseCase mockGetMovieVideosUseCase;
  late MoviesDetailsViewModel viewModel;

  setUp(() {
    mockGetMovieDetailUseCase = MockGetMovieDetailUseCase();
    mockGetMovieVideosUseCase = MockGetMovieVideosUseCase();
    viewModel = MoviesDetailsViewModel(
        mockGetMovieDetailUseCase, mockGetMovieVideosUseCase);
  });

  blocTest<MoviesDetailsViewModel, MovieDetailState>(
    'emits correct states when MovieDetailsEvent.load is added',
    build: () {
      // Create mock models
      final mockMovieDetails = MockMovieDetails();
      when(() => mockMovieDetails.title).thenReturn('Test Movie');

      final mockVideo = MockVideo();
      when(() => mockVideo.id).thenReturn('1');
      when(() => mockVideo.name).thenReturn('Trailer');

      // Mock successful responses
      when(() => mockGetMovieDetailUseCase.call(any())).thenAnswer(
        (_) async => Right(mockMovieDetails),
      );
      when(() => mockGetMovieVideosUseCase.call(any())).thenAnswer(
        (_) async => Right([mockVideo]),
      );
      return viewModel;
    },
    act: (bloc) => bloc.add(const MovieDetailsEvent.load(1)),
    expect: () => [
      isA<MovieDetailState>().having((state) => state.movieDetailResultState,
          'movieDetailResultState', MovieDetailResultState.loading()),
      isA<MovieDetailState>().having(
        (state) => state.title,
        'title',
        'Test Movie',
      ),
      isA<MovieDetailState>().having(
        (state) => state.videos.first.name,
        'name',
        "Trailer",
      ),
    ],
    verify: (_) {
      verify(() => mockGetMovieDetailUseCase.call(1)).called(1);
      verify(() => mockGetMovieVideosUseCase.call(1)).called(1);
    },
  );

  tearDown(() {
    viewModel.close();
  });
}
