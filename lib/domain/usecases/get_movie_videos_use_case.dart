import 'package:dartz/dartz.dart';
import 'package:popular_movies/core/failure/network_error.dart';
import 'package:popular_movies/domain/model/video.dart';

abstract class GetMovieVideosUseCase {
  Future<Either<Failure, List<Video>>> call(int id);
}
