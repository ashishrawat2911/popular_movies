// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_details_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MovieDetailState {
  String get title;
  List<Video> get videos;
  MovieDetailResultState get movieDetailResultState;

  /// Create a copy of MovieDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MovieDetailStateCopyWith<MovieDetailState> get copyWith =>
      _$MovieDetailStateCopyWithImpl<MovieDetailState>(
          this as MovieDetailState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MovieDetailState &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other.videos, videos) &&
            (identical(other.movieDetailResultState, movieDetailResultState) ||
                other.movieDetailResultState == movieDetailResultState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title,
      const DeepCollectionEquality().hash(videos), movieDetailResultState);

  @override
  String toString() {
    return 'MovieDetailState(title: $title, videos: $videos, movieDetailResultState: $movieDetailResultState)';
  }
}

/// @nodoc
abstract mixin class $MovieDetailStateCopyWith<$Res> {
  factory $MovieDetailStateCopyWith(
          MovieDetailState value, $Res Function(MovieDetailState) _then) =
      _$MovieDetailStateCopyWithImpl;
  @useResult
  $Res call(
      {String title,
      List<Video> videos,
      MovieDetailResultState movieDetailResultState});

  $MovieDetailResultStateCopyWith<$Res> get movieDetailResultState;
}

/// @nodoc
class _$MovieDetailStateCopyWithImpl<$Res>
    implements $MovieDetailStateCopyWith<$Res> {
  _$MovieDetailStateCopyWithImpl(this._self, this._then);

  final MovieDetailState _self;
  final $Res Function(MovieDetailState) _then;

  /// Create a copy of MovieDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? videos = null,
    Object? movieDetailResultState = null,
  }) {
    return _then(_self.copyWith(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      videos: null == videos
          ? _self.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<Video>,
      movieDetailResultState: null == movieDetailResultState
          ? _self.movieDetailResultState
          : movieDetailResultState // ignore: cast_nullable_to_non_nullable
              as MovieDetailResultState,
    ));
  }

  /// Create a copy of MovieDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MovieDetailResultStateCopyWith<$Res> get movieDetailResultState {
    return $MovieDetailResultStateCopyWith<$Res>(_self.movieDetailResultState,
        (value) {
      return _then(_self.copyWith(movieDetailResultState: value));
    });
  }
}

/// Adds pattern-matching-related methods to [MovieDetailState].
extension MovieDetailStatePatterns on MovieDetailState {
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
    TResult Function(_MovieDetailState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MovieDetailState() when $default != null:
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
    TResult Function(_MovieDetailState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MovieDetailState():
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
    TResult? Function(_MovieDetailState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MovieDetailState() when $default != null:
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
    TResult Function(String title, List<Video> videos,
            MovieDetailResultState movieDetailResultState)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MovieDetailState() when $default != null:
        return $default(
            _that.title, _that.videos, _that.movieDetailResultState);
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
    TResult Function(String title, List<Video> videos,
            MovieDetailResultState movieDetailResultState)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MovieDetailState():
        return $default(
            _that.title, _that.videos, _that.movieDetailResultState);
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
    TResult? Function(String title, List<Video> videos,
            MovieDetailResultState movieDetailResultState)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MovieDetailState() when $default != null:
        return $default(
            _that.title, _that.videos, _that.movieDetailResultState);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _MovieDetailState implements MovieDetailState {
  const _MovieDetailState(
      {this.title = "",
      final List<Video> videos = const [],
      this.movieDetailResultState = const MovieDetailResultState.loading()})
      : _videos = videos;

  @override
  @JsonKey()
  final String title;
  final List<Video> _videos;
  @override
  @JsonKey()
  List<Video> get videos {
    if (_videos is EqualUnmodifiableListView) return _videos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videos);
  }

  @override
  @JsonKey()
  final MovieDetailResultState movieDetailResultState;

  /// Create a copy of MovieDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MovieDetailStateCopyWith<_MovieDetailState> get copyWith =>
      __$MovieDetailStateCopyWithImpl<_MovieDetailState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MovieDetailState &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._videos, _videos) &&
            (identical(other.movieDetailResultState, movieDetailResultState) ||
                other.movieDetailResultState == movieDetailResultState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title,
      const DeepCollectionEquality().hash(_videos), movieDetailResultState);

  @override
  String toString() {
    return 'MovieDetailState(title: $title, videos: $videos, movieDetailResultState: $movieDetailResultState)';
  }
}

/// @nodoc
abstract mixin class _$MovieDetailStateCopyWith<$Res>
    implements $MovieDetailStateCopyWith<$Res> {
  factory _$MovieDetailStateCopyWith(
          _MovieDetailState value, $Res Function(_MovieDetailState) _then) =
      __$MovieDetailStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String title,
      List<Video> videos,
      MovieDetailResultState movieDetailResultState});

  @override
  $MovieDetailResultStateCopyWith<$Res> get movieDetailResultState;
}

/// @nodoc
class __$MovieDetailStateCopyWithImpl<$Res>
    implements _$MovieDetailStateCopyWith<$Res> {
  __$MovieDetailStateCopyWithImpl(this._self, this._then);

  final _MovieDetailState _self;
  final $Res Function(_MovieDetailState) _then;

  /// Create a copy of MovieDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = null,
    Object? videos = null,
    Object? movieDetailResultState = null,
  }) {
    return _then(_MovieDetailState(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      videos: null == videos
          ? _self._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<Video>,
      movieDetailResultState: null == movieDetailResultState
          ? _self.movieDetailResultState
          : movieDetailResultState // ignore: cast_nullable_to_non_nullable
              as MovieDetailResultState,
    ));
  }

  /// Create a copy of MovieDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MovieDetailResultStateCopyWith<$Res> get movieDetailResultState {
    return $MovieDetailResultStateCopyWith<$Res>(_self.movieDetailResultState,
        (value) {
      return _then(_self.copyWith(movieDetailResultState: value));
    });
  }
}

/// @nodoc
mixin _$MovieDetailResultState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MovieDetailResultState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MovieDetailResultState()';
  }
}

/// @nodoc
class $MovieDetailResultStateCopyWith<$Res> {
  $MovieDetailResultStateCopyWith(
      MovieDetailResultState _, $Res Function(MovieDetailResultState) __);
}

/// Adds pattern-matching-related methods to [MovieDetailResultState].
extension MovieDetailResultStatePatterns on MovieDetailResultState {
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
    TResult Function(MovieDetailLoading value)? loading,
    TResult Function(MovieDetailResult value)? result,
    TResult Function(MovieDetailError value)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case MovieDetailLoading() when loading != null:
        return loading(_that);
      case MovieDetailResult() when result != null:
        return result(_that);
      case MovieDetailError() when error != null:
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
    required TResult Function(MovieDetailLoading value) loading,
    required TResult Function(MovieDetailResult value) result,
    required TResult Function(MovieDetailError value) error,
  }) {
    final _that = this;
    switch (_that) {
      case MovieDetailLoading():
        return loading(_that);
      case MovieDetailResult():
        return result(_that);
      case MovieDetailError():
        return error(_that);
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
    TResult? Function(MovieDetailLoading value)? loading,
    TResult? Function(MovieDetailResult value)? result,
    TResult? Function(MovieDetailError value)? error,
  }) {
    final _that = this;
    switch (_that) {
      case MovieDetailLoading() when loading != null:
        return loading(_that);
      case MovieDetailResult() when result != null:
        return result(_that);
      case MovieDetailError() when error != null:
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
    TResult Function(MovieDetails movie)? result,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case MovieDetailLoading() when loading != null:
        return loading();
      case MovieDetailResult() when result != null:
        return result(_that.movie);
      case MovieDetailError() when error != null:
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
    required TResult Function(MovieDetails movie) result,
    required TResult Function(String error) error,
  }) {
    final _that = this;
    switch (_that) {
      case MovieDetailLoading():
        return loading();
      case MovieDetailResult():
        return result(_that.movie);
      case MovieDetailError():
        return error(_that.error);
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
    TResult? Function(MovieDetails movie)? result,
    TResult? Function(String error)? error,
  }) {
    final _that = this;
    switch (_that) {
      case MovieDetailLoading() when loading != null:
        return loading();
      case MovieDetailResult() when result != null:
        return result(_that.movie);
      case MovieDetailError() when error != null:
        return error(_that.error);
      case _:
        return null;
    }
  }
}

/// @nodoc

class MovieDetailLoading implements MovieDetailResultState {
  const MovieDetailLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MovieDetailLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MovieDetailResultState.loading()';
  }
}

/// @nodoc

class MovieDetailResult implements MovieDetailResultState {
  const MovieDetailResult(this.movie);

  final MovieDetails movie;

  /// Create a copy of MovieDetailResultState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MovieDetailResultCopyWith<MovieDetailResult> get copyWith =>
      _$MovieDetailResultCopyWithImpl<MovieDetailResult>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MovieDetailResult &&
            (identical(other.movie, movie) || other.movie == movie));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movie);

  @override
  String toString() {
    return 'MovieDetailResultState.result(movie: $movie)';
  }
}

/// @nodoc
abstract mixin class $MovieDetailResultCopyWith<$Res>
    implements $MovieDetailResultStateCopyWith<$Res> {
  factory $MovieDetailResultCopyWith(
          MovieDetailResult value, $Res Function(MovieDetailResult) _then) =
      _$MovieDetailResultCopyWithImpl;
  @useResult
  $Res call({MovieDetails movie});

  $MovieDetailsCopyWith<$Res> get movie;
}

/// @nodoc
class _$MovieDetailResultCopyWithImpl<$Res>
    implements $MovieDetailResultCopyWith<$Res> {
  _$MovieDetailResultCopyWithImpl(this._self, this._then);

  final MovieDetailResult _self;
  final $Res Function(MovieDetailResult) _then;

  /// Create a copy of MovieDetailResultState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? movie = null,
  }) {
    return _then(MovieDetailResult(
      null == movie
          ? _self.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as MovieDetails,
    ));
  }

  /// Create a copy of MovieDetailResultState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MovieDetailsCopyWith<$Res> get movie {
    return $MovieDetailsCopyWith<$Res>(_self.movie, (value) {
      return _then(_self.copyWith(movie: value));
    });
  }
}

/// @nodoc

class MovieDetailError implements MovieDetailResultState {
  const MovieDetailError(this.error);

  final String error;

  /// Create a copy of MovieDetailResultState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MovieDetailErrorCopyWith<MovieDetailError> get copyWith =>
      _$MovieDetailErrorCopyWithImpl<MovieDetailError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MovieDetailError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'MovieDetailResultState.error(error: $error)';
  }
}

/// @nodoc
abstract mixin class $MovieDetailErrorCopyWith<$Res>
    implements $MovieDetailResultStateCopyWith<$Res> {
  factory $MovieDetailErrorCopyWith(
          MovieDetailError value, $Res Function(MovieDetailError) _then) =
      _$MovieDetailErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$MovieDetailErrorCopyWithImpl<$Res>
    implements $MovieDetailErrorCopyWith<$Res> {
  _$MovieDetailErrorCopyWithImpl(this._self, this._then);

  final MovieDetailError _self;
  final $Res Function(MovieDetailError) _then;

  /// Create a copy of MovieDetailResultState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(MovieDetailError(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
