// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MoviesState {
  MoviesResultState get moviesResultState;

  /// Create a copy of MoviesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MoviesStateCopyWith<MoviesState> get copyWith =>
      _$MoviesStateCopyWithImpl<MoviesState>(this as MoviesState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MoviesState &&
            (identical(other.moviesResultState, moviesResultState) ||
                other.moviesResultState == moviesResultState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, moviesResultState);

  @override
  String toString() {
    return 'MoviesState(moviesResultState: $moviesResultState)';
  }
}

/// @nodoc
abstract mixin class $MoviesStateCopyWith<$Res> {
  factory $MoviesStateCopyWith(
          MoviesState value, $Res Function(MoviesState) _then) =
      _$MoviesStateCopyWithImpl;
  @useResult
  $Res call({MoviesResultState moviesResultState});

  $MoviesResultStateCopyWith<$Res> get moviesResultState;
}

/// @nodoc
class _$MoviesStateCopyWithImpl<$Res> implements $MoviesStateCopyWith<$Res> {
  _$MoviesStateCopyWithImpl(this._self, this._then);

  final MoviesState _self;
  final $Res Function(MoviesState) _then;

  /// Create a copy of MoviesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moviesResultState = null,
  }) {
    return _then(_self.copyWith(
      moviesResultState: null == moviesResultState
          ? _self.moviesResultState
          : moviesResultState // ignore: cast_nullable_to_non_nullable
              as MoviesResultState,
    ));
  }

  /// Create a copy of MoviesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoviesResultStateCopyWith<$Res> get moviesResultState {
    return $MoviesResultStateCopyWith<$Res>(_self.moviesResultState, (value) {
      return _then(_self.copyWith(moviesResultState: value));
    });
  }
}

/// Adds pattern-matching-related methods to [MoviesState].
extension MoviesStatePatterns on MoviesState {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MoviesState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MoviesState() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_MoviesState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MoviesState():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_MoviesState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MoviesState() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(MoviesResultState moviesResultState)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MoviesState() when $default != null:
        return $default(_that.moviesResultState);
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
  TResult when<TResult extends Object?>(
    TResult Function(MoviesResultState moviesResultState) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MoviesState():
        return $default(_that.moviesResultState);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(MoviesResultState moviesResultState)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MoviesState() when $default != null:
        return $default(_that.moviesResultState);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _MoviesState implements MoviesState {
  const _MoviesState(
      {this.moviesResultState = const MoviesResultState.loading()});

  @override
  @JsonKey()
  final MoviesResultState moviesResultState;

  /// Create a copy of MoviesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MoviesStateCopyWith<_MoviesState> get copyWith =>
      __$MoviesStateCopyWithImpl<_MoviesState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MoviesState &&
            (identical(other.moviesResultState, moviesResultState) ||
                other.moviesResultState == moviesResultState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, moviesResultState);

  @override
  String toString() {
    return 'MoviesState(moviesResultState: $moviesResultState)';
  }
}

/// @nodoc
abstract mixin class _$MoviesStateCopyWith<$Res>
    implements $MoviesStateCopyWith<$Res> {
  factory _$MoviesStateCopyWith(
          _MoviesState value, $Res Function(_MoviesState) _then) =
      __$MoviesStateCopyWithImpl;
  @override
  @useResult
  $Res call({MoviesResultState moviesResultState});

  @override
  $MoviesResultStateCopyWith<$Res> get moviesResultState;
}

/// @nodoc
class __$MoviesStateCopyWithImpl<$Res> implements _$MoviesStateCopyWith<$Res> {
  __$MoviesStateCopyWithImpl(this._self, this._then);

  final _MoviesState _self;
  final $Res Function(_MoviesState) _then;

  /// Create a copy of MoviesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? moviesResultState = null,
  }) {
    return _then(_MoviesState(
      moviesResultState: null == moviesResultState
          ? _self.moviesResultState
          : moviesResultState // ignore: cast_nullable_to_non_nullable
              as MoviesResultState,
    ));
  }

  /// Create a copy of MoviesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoviesResultStateCopyWith<$Res> get moviesResultState {
    return $MoviesResultStateCopyWith<$Res>(_self.moviesResultState, (value) {
      return _then(_self.copyWith(moviesResultState: value));
    });
  }
}

/// @nodoc
mixin _$MoviesResultState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MoviesResultState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MoviesResultState()';
  }
}

/// @nodoc
class $MoviesResultStateCopyWith<$Res> {
  $MoviesResultStateCopyWith(
      MoviesResultState _, $Res Function(MoviesResultState) __);
}

/// Adds pattern-matching-related methods to [MoviesResultState].
extension MoviesResultStatePatterns on MoviesResultState {
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
    TResult Function(MoviesLoading value)? loading,
    TResult Function(MoviesResult value)? result,
    TResult Function(MoviesError value)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case MoviesLoading() when loading != null:
        return loading(_that);
      case MoviesResult() when result != null:
        return result(_that);
      case MoviesError() when error != null:
        return error(_that);
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
    required TResult Function(MoviesLoading value) loading,
    required TResult Function(MoviesResult value) result,
    required TResult Function(MoviesError value) error,
  }) {
    final _that = this;
    switch (_that) {
      case MoviesLoading():
        return loading(_that);
      case MoviesResult():
        return result(_that);
      case MoviesError():
        return error(_that);
      case _:
        throw StateError('Unexpected subclass');
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
    TResult? Function(MoviesLoading value)? loading,
    TResult? Function(MoviesResult value)? result,
    TResult? Function(MoviesError value)? error,
  }) {
    final _that = this;
    switch (_that) {
      case MoviesLoading() when loading != null:
        return loading(_that);
      case MoviesResult() when result != null:
        return result(_that);
      case MoviesError() when error != null:
        return error(_that);
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
    TResult Function()? loading,
    TResult Function(List<Movie> movies)? result,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case MoviesLoading() when loading != null:
        return loading();
      case MoviesResult() when result != null:
        return result(_that.movies);
      case MoviesError() when error != null:
        return error(_that.error);
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
    required TResult Function() loading,
    required TResult Function(List<Movie> movies) result,
    required TResult Function(Failure error) error,
  }) {
    final _that = this;
    switch (_that) {
      case MoviesLoading():
        return loading();
      case MoviesResult():
        return result(_that.movies);
      case MoviesError():
        return error(_that.error);
      case _:
        throw StateError('Unexpected subclass');
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
    TResult? Function()? loading,
    TResult? Function(List<Movie> movies)? result,
    TResult? Function(Failure error)? error,
  }) {
    final _that = this;
    switch (_that) {
      case MoviesLoading() when loading != null:
        return loading();
      case MoviesResult() when result != null:
        return result(_that.movies);
      case MoviesError() when error != null:
        return error(_that.error);
      case _:
        return null;
    }
  }
}

/// @nodoc

class MoviesLoading implements MoviesResultState {
  const MoviesLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MoviesLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MoviesResultState.loading()';
  }
}

/// @nodoc

class MoviesResult implements MoviesResultState {
  const MoviesResult(final List<Movie> movies) : _movies = movies;

  final List<Movie> _movies;
  List<Movie> get movies {
    if (_movies is EqualUnmodifiableListView) return _movies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
  }

  /// Create a copy of MoviesResultState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MoviesResultCopyWith<MoviesResult> get copyWith =>
      _$MoviesResultCopyWithImpl<MoviesResult>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MoviesResult &&
            const DeepCollectionEquality().equals(other._movies, _movies));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_movies));

  @override
  String toString() {
    return 'MoviesResultState.result(movies: $movies)';
  }
}

/// @nodoc
abstract mixin class $MoviesResultCopyWith<$Res>
    implements $MoviesResultStateCopyWith<$Res> {
  factory $MoviesResultCopyWith(
          MoviesResult value, $Res Function(MoviesResult) _then) =
      _$MoviesResultCopyWithImpl;
  @useResult
  $Res call({List<Movie> movies});
}

/// @nodoc
class _$MoviesResultCopyWithImpl<$Res> implements $MoviesResultCopyWith<$Res> {
  _$MoviesResultCopyWithImpl(this._self, this._then);

  final MoviesResult _self;
  final $Res Function(MoviesResult) _then;

  /// Create a copy of MoviesResultState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? movies = null,
  }) {
    return _then(MoviesResult(
      null == movies
          ? _self._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

/// @nodoc

class MoviesError implements MoviesResultState {
  const MoviesError(this.error);

  final Failure error;

  /// Create a copy of MoviesResultState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MoviesErrorCopyWith<MoviesError> get copyWith =>
      _$MoviesErrorCopyWithImpl<MoviesError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MoviesError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'MoviesResultState.error(error: $error)';
  }
}

/// @nodoc
abstract mixin class $MoviesErrorCopyWith<$Res>
    implements $MoviesResultStateCopyWith<$Res> {
  factory $MoviesErrorCopyWith(
          MoviesError value, $Res Function(MoviesError) _then) =
      _$MoviesErrorCopyWithImpl;
  @useResult
  $Res call({Failure error});

  $FailureCopyWith<$Res> get error;
}

/// @nodoc
class _$MoviesErrorCopyWithImpl<$Res> implements $MoviesErrorCopyWith<$Res> {
  _$MoviesErrorCopyWithImpl(this._self, this._then);

  final MoviesError _self;
  final $Res Function(MoviesError) _then;

  /// Create a copy of MoviesResultState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(MoviesError(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  /// Create a copy of MoviesResultState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res> get error {
    return $FailureCopyWith<$Res>(_self.error, (value) {
      return _then(_self.copyWith(error: value));
    });
  }
}

// dart format on
