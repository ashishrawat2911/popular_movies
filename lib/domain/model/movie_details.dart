import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_details.freezed.dart';

@freezed
abstract class MovieDetails with _$MovieDetails {
  const factory MovieDetails(
    String backdropPath,
    String title,
    double voteAverage,
    String overview,
  ) = _MovieDetails;
}
