import 'package:dartz/dartz.dart';
import 'package:popular_movies/core/failure/network_error.dart';
import 'package:popular_movies/domain/model/movie.dart';
import 'package:popular_movies/domain/model/video.dart';

import '../model/movie_details.dart';

abstract class MovieRepository {
  Future<Either<Failure, List<Movie>>> getPopularMovies();

  Future<Either<Failure, MovieDetails>> getMovieDetail(int id);

  Future<Either<Failure, List<Video>>> getMovieVideos(int id);
}
