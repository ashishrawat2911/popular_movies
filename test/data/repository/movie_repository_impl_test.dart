import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:popular_movies/core/test/movie_data_factory.dart';
import 'package:popular_movies/core/failure/network_error.dart';
import 'package:popular_movies/data/repository/movie_repository_impl.dart';
import 'package:popular_movies/domain/model/movie.dart';
import 'package:popular_movies/domain/model/movie_details.dart';

class MockMovieRepositoryImpl extends Mock implements MovieRepositoryImpl {}

void main() {
  MockMovieRepositoryImpl mockMovieRepository = MockMovieRepositoryImpl();

  group('getPopularMovies function testing', () {
    test('success test', () async {
      const mockValue = Right<Failure, List<Movie>>([]);
      when(() => mockMovieRepository.getPopularMovies()).thenAnswer(
        (realInvocation) async => mockValue,
      );
      final movies = await mockMovieRepository.getPopularMovies();
      expectSync((movies as Right<Failure, List<Movie>>).value.length,
          mockValue.value.length);
    });
    test('error test', () async {
      final mockError =
          Left<Failure, List<Movie>>(MovieDataFactory.getNetworkError());
      when(() => mockMovieRepository.getPopularMovies()).thenAnswer(
        (realInvocation) async => mockError,
      );
      final movies = await mockMovieRepository.getPopularMovies();
      expectSync((movies as Left<Failure, List<Movie>>).value.message,
          mockError.value.message);
    });
  });

  group('getMovieDetail function testing', () {
    test('success test', () async {
      final mockValue =
          Right<Failure, MovieDetails>(MovieDataFactory.getMovieDetails());
      when(() => mockMovieRepository.getMovieDetail(0)).thenAnswer(
        (realInvocation) async => mockValue,
      );
      final movies = await mockMovieRepository.getMovieDetail(0);
      expectSync((movies as Right<Failure, MovieDetails>).value.title,
          mockValue.value.title);
    });
    test('error test', () async {
      final mockError =
          Left<Failure, MovieDetails>(MovieDataFactory.getNetworkError());
      when(() => mockMovieRepository.getMovieDetail(0)).thenAnswer(
        (realInvocation) async => mockError,
      );
      final movies = await mockMovieRepository.getMovieDetail(0);
      expectSync((movies as Left<Failure, MovieDetails>).value.message,
          mockError.value.message);
    });
  });
}
