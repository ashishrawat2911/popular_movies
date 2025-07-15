import 'package:injectable/injectable.dart';
import 'package:popular_movies/core/extention/list_extentions.dart';
import 'package:popular_movies/data/mapper/movie_domain_mapper.dart';
import 'package:popular_movies/data/source/movie_remote_data_source.dart';
import 'package:popular_movies/domain/model/movie.dart';
import 'package:popular_movies/domain/model/movie_details.dart';
import 'package:popular_movies/domain/model/video.dart';

@singleton
class MovieDataStoreFactory {
  final MovieDomainMapper _movieMapper;
  final MovieRemoteDataSource _movieRemoteDataSource;

  MovieDataStoreFactory(
    this._movieMapper,
    this._movieRemoteDataSource,
  );

  Future<MovieDetails> getMovieDetails(int id) async {
    final movie = await _movieRemoteDataSource.getMovieDetails(id);
    return _movieMapper.movieResponseToMovieDetails(movie);
  }

  Future<List<Movie>> getMovies() async {
    final movies = await _movieRemoteDataSource.getMovies();
    return movies.mapToList((e) => _movieMapper.movieResponseToMovie(e));
  }

  Future<List<Video>> getMovieVideos(int id) async {
    final videos = await _movieRemoteDataSource.getMovieVideos(id);
    return videos.mapToList((e) => _movieMapper.videoResponseToVideo(e));
  }
}
