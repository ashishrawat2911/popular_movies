import 'package:freezed_annotation/freezed_annotation.dart';

part 'page.freezed.dart';

part 'page.g.dart';

@Freezed(genericArgumentFactories: true)
abstract class PageResponse<T> with _$PageResponse<T> {
  const factory PageResponse(
    int? id,
    int? page,
    int? totalResults,
    int? totalPages,
    List<T> results,
  ) = _PageResponse;

  factory PageResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$PageResponseFromJson(json, fromJsonT);
}
