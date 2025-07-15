import 'package:injectable/injectable.dart';
import 'package:popular_movies/data/source/remote/model/movie_response_model.dart';
import 'package:popular_movies/data/source/remote/model/video_response.dart';
import 'package:popular_movies/domain/model/movie.dart';
import 'package:popular_movies/domain/model/movie_details.dart';
import 'package:popular_movies/domain/model/video.dart';
@injectable
class MovieDomainMapper {
  MovieDetails movieResponseToMovieDetails(
      MovieResponseModel movieResponseModel) {
    final movieDetails = MovieDetails(
      movieResponseModel.backdropPath,
      movieResponseModel.title,
      movieResponseModel.voteAverage,
      movieResponseModel.overview,
    );
    return movieDetails;
  }

  Movie movieResponseToMovie(MovieResponseModel movieResponseModel) {
    final movie = Movie(
      movieResponseModel.id,
      movieResponseModel.posterPath,
      movieResponseModel.title,
      movieResponseModel.voteAverage,
      movieResponseModel.overview,
    );
    return movie;
  }

  Video videoResponseToVideo(VideoResponse videoResponse) {
    final video = Video(
      videoResponse.id,
      videoResponse.key,
      videoResponse.name,
      videoResponse.site,
      videoResponse.size,
      videoResponse.type,
    );
    return video;
  }
}
