import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';

@freezed
abstract class Movie with _$Movie {
  const factory Movie(
    int id,
    String posterPath,
    String title,
    double voteAverage,
    String overview,
  ) = _Movie;
}
