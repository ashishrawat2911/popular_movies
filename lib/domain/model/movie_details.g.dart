// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MovieDetails _$MovieDetailsFromJson(Map<String, dynamic> json) =>
    _MovieDetails(
      json['backdrop_path'] as String,
      json['title'] as String,
      (json['vote_average'] as num).toDouble(),
      json['overview'] as String,
    );

Map<String, dynamic> _$MovieDetailsToJson(_MovieDetails instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'title': instance.title,
      'vote_average': instance.voteAverage,
      'overview': instance.overview,
    };
