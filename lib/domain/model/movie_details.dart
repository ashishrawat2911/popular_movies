import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_details.freezed.dart';

part 'movie_details.g.dart';

@freezed
abstract class MovieDetails with _$MovieDetails {  @JsonSerializable(fieldRename: FieldRename.snake)

const factory MovieDetails(
    String backdropPath,
    String title,
    double voteAverage,
    String overview,
  ) = _MovieDetails;

  factory MovieDetails.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailsFromJson(json);
}
