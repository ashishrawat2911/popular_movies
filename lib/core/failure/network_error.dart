import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_error.freezed.dart';

@Freezed()
sealed class Failure with _$Failure {
  const factory Failure.serverError({required String message}) = _ServerError;

  const factory Failure.clientError({required String message}) = _ClientError;

  const factory Failure.unknownError({required String message}) = _UnknownError;

  const factory Failure.noInternetConnection({required String message}) =
      _NoInternetConnection;
}
