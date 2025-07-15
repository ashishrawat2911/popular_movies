// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Failure {
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FailureCopyWith<Failure> get copyWith =>
      _$FailureCopyWithImpl<Failure>(this as Failure, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Failure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'Failure(message: $message)';
  }
}

/// @nodoc
abstract mixin class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) _then) =
      _$FailureCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._self, this._then);

  final Failure _self;
  final $Res Function(Failure) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_self.copyWith(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [Failure].
extension FailurePatterns on Failure {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ClientError value)? clientError,
    TResult Function(_UnknownError value)? unknownError,
    TResult Function(_NoInternetConnection value)? noInternetConnection,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ServerError() when serverError != null:
        return serverError(_that);
      case _ClientError() when clientError != null:
        return clientError(_that);
      case _UnknownError() when unknownError != null:
        return unknownError(_that);
      case _NoInternetConnection() when noInternetConnection != null:
        return noInternetConnection(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_ClientError value) clientError,
    required TResult Function(_UnknownError value) unknownError,
    required TResult Function(_NoInternetConnection value) noInternetConnection,
  }) {
    final _that = this;
    switch (_that) {
      case _ServerError():
        return serverError(_that);
      case _ClientError():
        return clientError(_that);
      case _UnknownError():
        return unknownError(_that);
      case _NoInternetConnection():
        return noInternetConnection(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_ClientError value)? clientError,
    TResult? Function(_UnknownError value)? unknownError,
    TResult? Function(_NoInternetConnection value)? noInternetConnection,
  }) {
    final _that = this;
    switch (_that) {
      case _ServerError() when serverError != null:
        return serverError(_that);
      case _ClientError() when clientError != null:
        return clientError(_that);
      case _UnknownError() when unknownError != null:
        return unknownError(_that);
      case _NoInternetConnection() when noInternetConnection != null:
        return noInternetConnection(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function(String message)? clientError,
    TResult Function(String message)? unknownError,
    TResult Function(String message)? noInternetConnection,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ServerError() when serverError != null:
        return serverError(_that.message);
      case _ClientError() when clientError != null:
        return clientError(_that.message);
      case _UnknownError() when unknownError != null:
        return unknownError(_that.message);
      case _NoInternetConnection() when noInternetConnection != null:
        return noInternetConnection(_that.message);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverError,
    required TResult Function(String message) clientError,
    required TResult Function(String message) unknownError,
    required TResult Function(String message) noInternetConnection,
  }) {
    final _that = this;
    switch (_that) {
      case _ServerError():
        return serverError(_that.message);
      case _ClientError():
        return clientError(_that.message);
      case _UnknownError():
        return unknownError(_that.message);
      case _NoInternetConnection():
        return noInternetConnection(_that.message);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? serverError,
    TResult? Function(String message)? clientError,
    TResult? Function(String message)? unknownError,
    TResult? Function(String message)? noInternetConnection,
  }) {
    final _that = this;
    switch (_that) {
      case _ServerError() when serverError != null:
        return serverError(_that.message);
      case _ClientError() when clientError != null:
        return clientError(_that.message);
      case _UnknownError() when unknownError != null:
        return unknownError(_that.message);
      case _NoInternetConnection() when noInternetConnection != null:
        return noInternetConnection(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ServerError implements Failure {
  const _ServerError({required this.message});

  @override
  final String message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ServerErrorCopyWith<_ServerError> get copyWith =>
      __$ServerErrorCopyWithImpl<_ServerError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ServerError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'Failure.serverError(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$ServerErrorCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$ServerErrorCopyWith(
          _ServerError value, $Res Function(_ServerError) _then) =
      __$ServerErrorCopyWithImpl;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$ServerErrorCopyWithImpl<$Res> implements _$ServerErrorCopyWith<$Res> {
  __$ServerErrorCopyWithImpl(this._self, this._then);

  final _ServerError _self;
  final $Res Function(_ServerError) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_ServerError(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _ClientError implements Failure {
  const _ClientError({required this.message});

  @override
  final String message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ClientErrorCopyWith<_ClientError> get copyWith =>
      __$ClientErrorCopyWithImpl<_ClientError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClientError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'Failure.clientError(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$ClientErrorCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$ClientErrorCopyWith(
          _ClientError value, $Res Function(_ClientError) _then) =
      __$ClientErrorCopyWithImpl;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$ClientErrorCopyWithImpl<$Res> implements _$ClientErrorCopyWith<$Res> {
  __$ClientErrorCopyWithImpl(this._self, this._then);

  final _ClientError _self;
  final $Res Function(_ClientError) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_ClientError(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _UnknownError implements Failure {
  const _UnknownError({required this.message});

  @override
  final String message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UnknownErrorCopyWith<_UnknownError> get copyWith =>
      __$UnknownErrorCopyWithImpl<_UnknownError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UnknownError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'Failure.unknownError(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$UnknownErrorCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$UnknownErrorCopyWith(
          _UnknownError value, $Res Function(_UnknownError) _then) =
      __$UnknownErrorCopyWithImpl;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$UnknownErrorCopyWithImpl<$Res>
    implements _$UnknownErrorCopyWith<$Res> {
  __$UnknownErrorCopyWithImpl(this._self, this._then);

  final _UnknownError _self;
  final $Res Function(_UnknownError) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_UnknownError(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _NoInternetConnection implements Failure {
  const _NoInternetConnection({required this.message});

  @override
  final String message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NoInternetConnectionCopyWith<_NoInternetConnection> get copyWith =>
      __$NoInternetConnectionCopyWithImpl<_NoInternetConnection>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NoInternetConnection &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'Failure.noInternetConnection(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$NoInternetConnectionCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$NoInternetConnectionCopyWith(_NoInternetConnection value,
          $Res Function(_NoInternetConnection) _then) =
      __$NoInternetConnectionCopyWithImpl;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$NoInternetConnectionCopyWithImpl<$Res>
    implements _$NoInternetConnectionCopyWith<$Res> {
  __$NoInternetConnectionCopyWithImpl(this._self, this._then);

  final _NoInternetConnection _self;
  final $Res Function(_NoInternetConnection) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_NoInternetConnection(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
