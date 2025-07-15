import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';
import 'package:popular_movies/domain/model/movie_details.dart';
import 'package:popular_movies/domain/model/video.dart';
import 'package:popular_movies/domain/usecases/get_movie_detail_use_case.dart';
import 'package:popular_movies/domain/usecases/get_movie_videos_use_case.dart';
import 'package:popular_movies/presentation/features/movie_detail/view/movie_details_screen.dart';

/// Usage: the movie details are loaded successfully
Future<void> theMovieDetailsAreLoadedSuccessfully(WidgetTester tester) async {
  final mockGetMovieDetailUseCase = GetIt.I<GetMovieDetailUseCase>();
  final mockGetMovieVideosUseCase = GetIt.I<GetMovieVideosUseCase>();

  when(() => mockGetMovieDetailUseCase.call(1)).thenAnswer(
    (_) async => Right(MovieDetails("", "Title 1", 5.5, "Overview 1")),
  );
  when(() => mockGetMovieVideosUseCase.call(1)).thenAnswer(
    (_) async => Right([
      Video("1", "", "Video 1", "https://video1.com", 1, ""),
    ]),
  );
  await tester.pumpWidget(
    MaterialApp(
      home: const MoviesDetailScreen(1),
    ),
  );
  await tester.pumpAndSettle();
}
