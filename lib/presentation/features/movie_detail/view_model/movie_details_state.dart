part of 'movie_details_view_model.dart';

@freezed
abstract class MovieDetailState with _$MovieDetailState {
  const factory MovieDetailState({
    @Default("") String title,
    @Default([]) List<Video> videos,
    @Default(MovieDetailResultState.loading())
    MovieDetailResultState movieDetailResultState,
  }) = _MovieDetailState;
}

@freezed
sealed class MovieDetailResultState with _$MovieDetailResultState {
  const factory MovieDetailResultState.loading() = MovieDetailLoading;

  const factory MovieDetailResultState.result(MovieDetails movie) =
      MovieDetailResult;

  const factory MovieDetailResultState.error(String error) = MovieDetailError;
}
