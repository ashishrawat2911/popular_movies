import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';
import 'package:popular_movies/domain/model/movie.dart';
import 'package:popular_movies/domain/model/movie_details.dart';
import 'package:popular_movies/domain/model/video.dart';
import 'package:popular_movies/domain/usecases/get_movie_detail_use_case.dart';
import 'package:popular_movies/domain/usecases/get_movie_videos_use_case.dart';
import 'package:popular_movies/domain/usecases/get_movies_use_case.dart';
import 'package:popular_movies/presentation/features/movies/view/movies_screen.dart';

/// Usage: a list of movies is displayed
Future<void> iPrepareMockDataForMovies(WidgetTester tester) async {
  final mockGetMoviesUseCase = GetIt.I<GetMoviesUseCase>();
  final mockGetMovieDetailUseCase = GetIt.I<GetMovieDetailUseCase>();
  final mockGetMovieVideosUseCase = GetIt.I<GetMovieVideosUseCase>();
  when(() => mockGetMoviesUseCase.call()).thenAnswer(
    (_) async => Right([
      Movie(1, "", "Title 1", 5.5, "Overview 1"),
      Movie(2, "", "Title 2", 6.5, "Overview 2"),
      Movie(3, "", "Title 3", 7.5, "Overview 3"),
    ]),
  );
  when(() => mockGetMovieDetailUseCase.call(1)).thenAnswer(
    (_) async => Right(MovieDetails("", "Title 1", 5.5, "Overview 1")),
  );
  when(() => mockGetMovieVideosUseCase.call(1)).thenAnswer(
    (_) async =>
        Right([Video("1", "Video 1", "https://video1.com", "", 1, "")]),
  );
  await tester.pumpWidget(
    MaterialApp(
      home: const MoviesScreen(),
    ),
  );
  await tester.pumpAndSettle();
}
