import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:popular_movies/core/failure/network_error.dart';
import 'package:popular_movies/data/repository/movie_repository_impl.dart';
import 'package:popular_movies/data/source/remote/service/movie_api_service.dart';
import 'package:popular_movies/domain/model/movie.dart';
import 'package:popular_movies/domain/model/movie_details.dart';
import 'package:popular_movies/domain/model/page.dart';
import 'package:popular_movies/domain/model/video.dart';

import '../../utils/mocks/mock_classes.dart';

void main() {
  late MockMovieApiService mockMovieApiService;
  late MovieRepositoryImpl movieRepository;
  late PageResponse<Movie> mockMovieResponse;
  late PageResponse<Video> mockVideoResponse;
  late Movie mockMovie;
  late MockVideo mockVideo;
  late MockMovieDetails mockMovieDetails;

  setUp(() {
    mockMovieApiService = MockMovieApiService();
    movieRepository = MovieRepositoryImpl(mockMovieApiService);
    mockMovieResponse = MockMovieResponse();
    mockVideoResponse = MockVideoResponse();
    mockMovie = MockMovie();
    mockVideo = MockVideo();
    mockMovieDetails = MockMovieDetails();
  });

  group('getPopularMovies', () {
    test('should return list of movies on success', () async {
      when(() => mockMovie.title).thenReturn("Title 1");
      when(() => mockMovieResponse.results).thenReturn([mockMovie]);
      when(() => mockMovieApiService.getMovies())
          .thenAnswer((_) async => mockMovieResponse);

      final result = await movieRepository.getPopularMovies();

      expect((result as Right).value, mockMovieResponse.results);
      expect(
        (result as Right<Failure, List<Movie>>).value.first.title,
        "Title 1",
      );
    });

    test('should return failure on error', () async {
      when(() => mockMovieApiService.getMovies()).thenThrow(Exception('Error'));

      final result = await movieRepository.getPopularMovies();

      expect((result as Left).value.message, 'Exception: Error');
    });

    test('should return empty list when API returns no movies', () async {
      when(() => mockMovieResponse.results).thenReturn([]);
      when(() => mockMovieApiService.getMovies())
          .thenAnswer((_) async => mockMovieResponse);

      final result = await movieRepository.getPopularMovies();

      expect((result as Right).value, isEmpty);
    });
  });

  group('getMovieDetail', () {
    test('should return movie details on success', () async {
      when(() => mockMovieDetails.title).thenReturn("Title 1");

      when(() => mockMovieApiService.getMovieDetails(1))
          .thenAnswer((_) async => mockMovieDetails);

      final result = await movieRepository.getMovieDetail(1);

      expect((result as Right).value, mockMovieDetails);
      expect((result as Right<Failure, MovieDetails>).value.title, "Title 1");
    });

    test('should return failure on error', () async {
      when(() => mockMovieApiService.getMovieDetails(1))
          .thenThrow(Exception('Error'));

      final result = await movieRepository.getMovieDetail(1);

      expect((result as Left).value.message, 'Exception: Error');
    });
  });
  group('getMovieVideos', () {
    test('should return list of videos on success', () async {
      when(() => mockVideo.name).thenReturn("Video 1");
      when(() => mockVideoResponse.results).thenReturn([mockVideo]);
      when(() => mockMovieApiService.getMovieVideos(1))
          .thenAnswer((_) async => mockVideoResponse);

      final result = await movieRepository.getMovieVideos(1);

      expect(
          (result as Right<Failure, List<Video>>).value.first.name, "Video 1");
    });

    test('should return failure on error', () async {
      when(() => mockMovieApiService.getMovieVideos(1))
          .thenThrow(Exception('Error'));

      final result = await movieRepository.getMovieVideos(1);

      expect((result as Left).value.message, 'Exception: Error');
    });
  });
}
