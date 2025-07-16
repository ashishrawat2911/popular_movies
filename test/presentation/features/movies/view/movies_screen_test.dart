import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';
import 'package:popular_movies/core/failure/network_error.dart';
import 'package:popular_movies/presentation/features/movie_detail/view/movie_details_screen.dart';
import 'package:popular_movies/presentation/features/movie_detail/view_model/movie_details_view_model.dart';
import 'package:popular_movies/presentation/features/movies/view/movies_screen.dart';
import 'package:popular_movies/presentation/features/movies/view_model/movies_view_model.dart';
import 'package:popular_movies/routes/app_router.gr.dart';

import '../../../../utils/mocks/app.dart';
import '../../../../utils/mocks/mock_classes.dart';

late MockGetMoviesUseCase mockGetMoviesUseCase;
late MockGetMovieDetailUseCase mockGetMovieDetailUseCase;
late MockGetMovieVideosUseCase mockGetMovieVideosUseCase;

void main() {
  setUpAll(() async {
    mockGetMoviesUseCase = MockGetMoviesUseCase();
    mockGetMovieDetailUseCase = MockGetMovieDetailUseCase();
    mockGetMovieVideosUseCase = MockGetMovieVideosUseCase();

    GetIt.I
      ..registerFactory<MoviesViewModel>(
          () => MoviesViewModel(mockGetMoviesUseCase))
      ..registerFactory<MoviesDetailsViewModel>(
        () => MoviesDetailsViewModel(
            mockGetMovieDetailUseCase, mockGetMovieVideosUseCase),
      );
  });

  group('''Movies Screen''', () {
    testWidgets('''Screen should display a list of Movies''', (tester) async {
      final mockMovie = MockMovie();

      when(() => mockMovie.id).thenReturn(1);
      when(() => mockMovie.title).thenReturn("Title 1");
      when(() => mockMovie.posterPath).thenReturn("");
      when(() => mockMovie.voteAverage).thenReturn(5.5);

      when(() => mockGetMoviesUseCase.call()).thenAnswer(
        (_) async => Right([mockMovie]),
      );
      final mockMovieDetails = MockMovieDetails();
      final mockVideo = MockVideo();

      when(() => mockMovieDetails.title).thenReturn("Title 1");
      when(() => mockMovieDetails.voteAverage).thenReturn(5.5);
      when(() => mockMovieDetails.overview).thenReturn("Overview 1");
      when(() => mockMovieDetails.backdropPath).thenReturn("");

      when(() => mockVideo.name).thenReturn("Video 1");
      when(() => mockVideo.key).thenReturn("VideoKey");

      when(() => mockGetMovieDetailUseCase.call(1)).thenAnswer(
        (_) async => Right(mockMovieDetails),
      );
      when(() => mockGetMovieVideosUseCase.call(1)).thenAnswer(
        (_) async => Right([mockVideo]),
      );
      await tester.pumpWidget(
        buildTestableWidget(const MoviesScreen()),
      );
      await tester.pumpAndSettle();

      expect(find.text("Title 1"), findsOneWidget);
    });
    testWidgets(
        '''Screen should display an error message when the backend fails''',
        (tester) async {
      when(() => mockGetMoviesUseCase.call()).thenAnswer(
        (_) async =>
            Left(Failure.serverError(message: "Failed to fetch movies")),
      );
      await tester.pumpWidget(
        buildTestableWidget(
          const MoviesScreen(),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.text("Failed to fetch movies"), findsOneWidget);
    });
    testWidgets('''Navigate to movie details screen''', (tester) async {
      final mockMovie = MockMovie();

      when(() => mockMovie.id).thenReturn(1);
      when(() => mockMovie.title).thenReturn("Title 1");
      when(() => mockMovie.posterPath).thenReturn("");
      when(() => mockMovie.voteAverage).thenReturn(5.5);

      when(() => mockGetMoviesUseCase.call()).thenAnswer(
        (_) async => Right([mockMovie]),
      );
      final mockMovieDetails = MockMovieDetails();
      final mockVideo = MockVideo();

      when(() => mockMovieDetails.title).thenReturn("Title 1");
      when(() => mockMovieDetails.voteAverage).thenReturn(5.5);
      when(() => mockMovieDetails.overview).thenReturn("Overview 1");
      when(() => mockMovieDetails.backdropPath).thenReturn("");

      when(() => mockVideo.name).thenReturn("Video 1");
      when(() => mockVideo.key).thenReturn("VideoKey");

      when(() => mockGetMovieDetailUseCase.call(1)).thenAnswer(
        (_) async => Right(mockMovieDetails),
      );
      when(() => mockGetMovieVideosUseCase.call(1)).thenAnswer(
        (_) async => Right([mockVideo]),
      );
      await tester.pumpWidget(
        buildTestableWidget(const MoviesScreen()),
      );
      await tester.pumpAndSettle();
      await tester.tap(find.text("Title 1"));
      await tester.pumpAndSettle();
      expect(find.byType(MoviesDetailScreen), findsOneWidget);
    });
  });
}
