import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';
import 'package:popular_movies/core/failure/network_error.dart';
import 'package:popular_movies/localization/app_localizations.dart';
import 'package:popular_movies/presentation/features/movie_detail/view/movie_details_screen.dart';
import 'package:popular_movies/presentation/features/movie_detail/view_model/movie_details_view_model.dart';
import 'package:popular_movies/routes/app_router.gr.dart';

import '../../../../utils/mocks/app.dart';
import '../../../../utils/mocks/mock_classes.dart';

void main() {
  late MockGetMovieDetailUseCase mockGetMovieDetailUseCase;
  late MockGetMovieVideosUseCase mockGetMovieVideosUseCase;
  late MockMovieDetails mockMovieDetails;
  late MockVideo mockVideo;

  void mockSuccessResponse() {
    when(() => mockMovieDetails.title).thenReturn("Title 1");
    when(() => mockMovieDetails.voteAverage).thenReturn(5.5);
    when(() => mockMovieDetails.overview).thenReturn("Overview 1");
    when(() => mockMovieDetails.backdropPath).thenReturn("");
    when(() => mockVideo.name).thenReturn("Video 1");
    when(() => mockVideo.key).thenReturn("Video 1 Key");

    when(() => mockGetMovieDetailUseCase.call(1)).thenAnswer(
      (_) async => Right(mockMovieDetails),
    );
    when(() => mockGetMovieVideosUseCase.call(1)).thenAnswer(
      (_) async => Right([mockVideo]),
    );
  }

  setUpAll(
    () {
      mockGetMovieDetailUseCase = MockGetMovieDetailUseCase();
      mockGetMovieVideosUseCase = MockGetMovieVideosUseCase();
      mockMovieDetails = MockMovieDetails();
      mockVideo = MockVideo();
      GetIt.I.registerFactory<MoviesDetailsViewModel>(
        () => MoviesDetailsViewModel(
          mockGetMovieDetailUseCase,
          mockGetMovieVideosUseCase,
        ),
      );
    },
  );
  group('''Movie Details Screen''', () {
    testWidgets('''Display movie details''', (tester) async {
      mockSuccessResponse();
      await tester.pumpWidget(buildTestableWidget(const MoviesDetailScreen(1)));
      await tester.pumpAndSettle();
      expect(find.text("Title 1"), findsWidgets);
      expect(find.text("Ratings: 5.5"), findsOneWidget);
      expect(find.text("Overview 1"), findsOneWidget);
      expect(find.text("Video 1"), findsOneWidget);
    });
    testWidgets('''Handle error while loading movie details''', (tester) async {
      when(() => mockGetMovieDetailUseCase.call(1)).thenAnswer(
        (_) async =>
            Left(Failure.serverError(message: "Failed to fetch movie")),
      );
      when(() => mockGetMovieVideosUseCase.call(1)).thenAnswer(
        (_) async => Right([]),
      );
      await tester.pumpWidget(buildTestableWidget(const MoviesDetailScreen(1)));
      await tester.pumpAndSettle();
      expect(find.text("Failed to fetch movie"), findsOneWidget);
    });
  });
}
