// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Video _$VideoFromJson(Map<String, dynamic> json) => _Video(
      json['id'] as String,
      json['key'] as String,
      json['name'] as String,
      json['site'] as String,
      (json['size'] as num).toInt(),
      json['type'] as String,
    );

Map<String, dynamic> _$VideoToJson(_Video instance) => <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'name': instance.name,
      'site': instance.site,
      'size': instance.size,
      'type': instance.type,
    };
