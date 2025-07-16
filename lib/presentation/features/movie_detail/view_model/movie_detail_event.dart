part of 'movie_details_view_model.dart';

sealed class MovieDetailsEvent {
  const MovieDetailsEvent._();

  const factory MovieDetailsEvent.load(int id) = _LoadMovieDetailsEvent;
}

class _LoadMovieDetailsEvent extends MovieDetailsEvent {
  final int id;
  const _LoadMovieDetailsEvent(this.id) : super._();
}
