import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:popular_movies/domain/model/movie.dart';
import 'package:popular_movies/domain/model/movie_details.dart';
import 'package:popular_movies/domain/model/page.dart';
import 'package:popular_movies/domain/model/video.dart';
import 'package:retrofit/retrofit.dart';

part 'movie_api_service.g.dart';

@singleton
@RestApi()
abstract class MovieApiService {
  @factoryMethod
  factory MovieApiService(Dio dio) => _MovieApiService(dio);

  @GET("movie/popular")
  Future<PageResponse<Movie>> getMovies();

  @GET("movie/{movie_id}")
  Future<MovieDetails> getMovieDetails(@Path("movie_id") int id);

  @GET("movie/{id}/videos")
  Future<PageResponse<Video>> getMovieVideos(@Path("id") int movieId);
}
