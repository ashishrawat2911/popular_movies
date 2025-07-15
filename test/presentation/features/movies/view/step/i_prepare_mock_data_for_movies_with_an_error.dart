import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';
import 'package:popular_movies/core/failure/network_error.dart';
import 'package:popular_movies/domain/usecases/get_movies_use_case.dart';

/// Usage: I prepare mock data for movies with an error
Future<void> iPrepareMockDataForMoviesWithAnError(WidgetTester tester) async {
  final mockGetMoviesUseCase = GetIt.I<GetMoviesUseCase>();

  when(() => mockGetMoviesUseCase.call()).thenAnswer(
    (_) async => Left(Failure.serverError(message: "Failed to fetch movies")),
  );
}
