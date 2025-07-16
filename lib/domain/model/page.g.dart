// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PageResponse<T> _$PageResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _PageResponse<T>(
      (json['id'] as num?)?.toInt(),
      (json['page'] as num?)?.toInt(),
      (json['totalResults'] as num?)?.toInt(),
      (json['totalPages'] as num?)?.toInt(),
      (json['results'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$PageResponseToJson<T>(
  _PageResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'id': instance.id,
      'page': instance.page,
      'totalResults': instance.totalResults,
      'totalPages': instance.totalPages,
      'results': instance.results.map(toJsonT).toList(),
    };
