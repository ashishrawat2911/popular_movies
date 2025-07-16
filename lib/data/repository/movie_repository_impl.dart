import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:popular_movies/core/failure/network_error.dart';
import 'package:popular_movies/data/source/remote/service/movie_api_service.dart';
import 'package:popular_movies/domain/model/movie.dart';
import 'package:popular_movies/domain/model/movie_details.dart';
import 'package:popular_movies/domain/model/video.dart';
import 'package:popular_movies/domain/repository/movie_repository.dart';

@Injectable(as: MovieRepository)
class MovieRepositoryImpl extends MovieRepository {
  final MovieApiService _movieApiService;

  MovieRepositoryImpl(this._movieApiService);

  @override
  Future<Either<Failure, MovieDetails>> getMovieDetail(int id) async {
    try {
      final movie = await _movieApiService.getMovieDetails(id);

      return Right(movie);
    } catch (e) {
      return Left(Failure.serverError(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getPopularMovies() async {
    try {
      final movies = await _movieApiService.getMovies();
      return Right(movies.results);
    } catch (e) {
      return Left(Failure.serverError(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Video>>> getMovieVideos(int id) async {
    try {
      final videos = await _movieApiService.getMovieVideos(id);
      return Right(videos.results);
    } catch (e) {
      return Left(Failure.serverError(message: e.toString()));
    }
  }
}
