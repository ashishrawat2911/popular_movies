import 'package:mocktail/mocktail.dart';
import 'package:popular_movies/data/source/remote/service/movie_api_service.dart';
import 'package:popular_movies/domain/model/movie.dart';
import 'package:popular_movies/domain/model/movie_details.dart';
import 'package:popular_movies/domain/model/page.dart';
import 'package:popular_movies/domain/model/video.dart';
import 'package:popular_movies/domain/usecases/get_movie_detail_use_case.dart';
import 'package:popular_movies/domain/usecases/get_movie_videos_use_case.dart';
import 'package:popular_movies/domain/usecases/get_movies_use_case.dart';

class MockMovieApiService extends Mock implements MovieApiService {}

class MockMovieResponse extends Mock implements PageResponse<Movie> {}

class MockVideoResponse extends Mock implements PageResponse<Video> {}

class MockMovie extends Mock implements Movie {}

class MockVideo extends Mock implements Video {}

class MockMovieDetails extends Mock implements MovieDetails {}

class MockGetMoviesUseCase extends Mock implements GetMoviesUseCase {}

class MockGetMovieDetailUseCase extends Mock implements GetMovieDetailUseCase {}

class MockGetMovieVideosUseCase extends Mock implements GetMovieVideosUseCase {}
