import 'package:dartz/dartz.dart';
import 'package:popular_movies/core/failure/network_error.dart';
import 'package:popular_movies/domain/model/movie_details.dart';

abstract class GetMovieDetailUseCase {
  Future<Either<Failure, MovieDetails>> call(int id);
}
