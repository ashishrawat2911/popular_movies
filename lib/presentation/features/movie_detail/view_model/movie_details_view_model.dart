import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:popular_movies/domain/model/movie_details.dart';
import 'package:popular_movies/domain/model/video.dart';
import 'package:popular_movies/domain/usecases/get_movie_detail_use_case.dart';
import 'package:popular_movies/domain/usecases/get_movie_videos_use_case.dart';

part 'movie_detail_event.dart';

part 'movie_details_state.dart';

part 'movie_details_view_model.freezed.dart';

@injectable
class MoviesDetailsViewModel extends Bloc<MovieDetailsEvent, MovieDetailState> {
  final GetMovieDetailUseCase _getMovieDetailUseCase;
  final GetMovieVideosUseCase _getMovieVideosUseCase;

  MoviesDetailsViewModel(
      this._getMovieDetailUseCase, this._getMovieVideosUseCase)
      : super(const MovieDetailState()) {
    on<MovieDetailsEvent>((event, emit) => switch (event) {
          _LoadMovieDetailsEvent() => _onLoadMovieDetails(emit, event),
        });
  }

  Future<void> _onLoadMovieDetails(
    Emitter<MovieDetailState> emit,
    _LoadMovieDetailsEvent event,
  ) async {
    final (movieResult, videoResult) = await (
      _getMovieDetailUseCase.call(event.id),
      _getMovieVideosUseCase.call(event.id)
    ).wait;

    movieResult.fold((l) {
      emit(state.copyWith(
          movieDetailResultState: MovieDetailResultState.error(l.message)));
    }, (r) {
      emit(state.copyWith(
        movieDetailResultState: MovieDetailResultState.result(r),
        title: r.title,
      ));
    });

    videoResult.forEach((videos) => emit(
          state.copyWith(
            videos: videos
                .where((video) =>
                    video.site == "YouTube" && video.type == "Trailer")
                .toList(),
          ),
        ));
  }
}
