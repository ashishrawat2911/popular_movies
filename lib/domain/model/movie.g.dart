// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Movie _$MovieFromJson(Map<String, dynamic> json) => _Movie(
      (json['id'] as num).toInt(),
      json['poster_path'] as String,
      json['backdrop_path'] as String,
      json['title'] as String,
      (json['vote_average'] as num).toDouble(),
      json['overview'] as String,
    );

Map<String, dynamic> _$MovieToJson(_Movie instance) => <String, dynamic>{
      'id': instance.id,
      'poster_path': instance.posterPath,
      'backdrop_path': instance.backdropPath,
      'title': instance.title,
      'vote_average': instance.voteAverage,
      'overview': instance.overview,
    };
