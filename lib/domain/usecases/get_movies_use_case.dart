import 'package:dartz/dartz.dart';
import 'package:popular_movies/core/failure/network_error.dart';
import 'package:popular_movies/domain/model/movie.dart';

abstract class GetMoviesUseCase {
  Future<Either<Failure, List<Movie>>> call();
}
