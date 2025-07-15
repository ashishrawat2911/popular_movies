import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';
import 'package:popular_movies/core/failure/network_error.dart';
import 'package:popular_movies/domain/usecases/get_movie_detail_use_case.dart';
import 'package:popular_movies/domain/usecases/get_movie_videos_use_case.dart';
import 'package:popular_movies/domain/usecases/get_movies_use_case.dart';
import 'package:popular_movies/presentation/features/movie_detail/view/movie_details_screen.dart';

/// Usage: there is an error loading the movie details
Future<void> thereIsAnErrorLoadingTheMovieDetails(WidgetTester tester) async {
  final mockGetMoviesUseCase = GetIt.I<GetMovieDetailUseCase>();
  final mockGetMovieVideosUseCase = GetIt.I<GetMovieVideosUseCase>();

  when(() => mockGetMoviesUseCase.call(1)).thenAnswer(
    (_) async => Left(Failure.serverError(message: "Failed to fetch movie")),
  );
  when(() => mockGetMovieVideosUseCase.call(1)).thenAnswer(
    (_) async => Right([]),
  );
  await tester.pumpWidget(
    MaterialApp(
      home: const MoviesDetailScreen(1),
    ),
  );
  await tester.pumpAndSettle();
}
