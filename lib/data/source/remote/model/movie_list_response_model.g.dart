// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_list_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieListResponseModel _$MovieListResponseModelFromJson(
        Map<String, dynamic> json) =>
    MovieListResponseModel(
      (json['page'] as num).toInt(),
      (json['total_results'] as num).toInt(),
      (json['total_pages'] as num).toInt(),
      (json['results'] as List<dynamic>)
          .map((e) => MovieResponseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MovieListResponseModelToJson(
        MovieListResponseModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'total_results': instance.totalResults,
      'total_pages': instance.totalPages,
      'results': instance.results,
    };
