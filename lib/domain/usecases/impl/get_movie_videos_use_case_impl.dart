import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:popular_movies/core/failure/network_error.dart';
import 'package:popular_movies/domain/model/video.dart';
import 'package:popular_movies/domain/repository/movie_repository.dart';
import 'package:popular_movies/domain/usecases/get_movie_videos_use_case.dart';

@Injectable(as: GetMovieVideosUseCase)
class GetMovieVideosUseCaseImpl extends GetMovieVideosUseCase {
  final MovieRepository _movieRepository;

  GetMovieVideosUseCaseImpl(this._movieRepository);

  @override
  Future<Either<Failure, List<Video>>> call(int id) {
    return _movieRepository.getMovieVideos(id);
  }
}
