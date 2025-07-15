import 'package:freezed_annotation/freezed_annotation.dart';

part 'video.freezed.dart';

@freezed
abstract class Video with _$Video {
  const factory Video(
    final String id,
    final String key,
    final String name,
    final String site,
    final int size,
    final String type,
  ) = _Video;
}
