import 'package:freezed_annotation/freezed_annotation.dart';

part 'video.freezed.dart';

part 'video.g.dart';

@freezed
abstract class Video with _$Video {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Video(
    final String id,
    final String key,
    final String name,
    final String site,
    final int size,
    final String type,
  ) = _Video;

  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);
}
