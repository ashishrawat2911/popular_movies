// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PageResponse<T> {
  int? get id;
  int? get page;
  int? get totalResults;
  int? get totalPages;
  List<T> get results;

  /// Create a copy of PageResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PageResponseCopyWith<T, PageResponse<T>> get copyWith =>
      _$PageResponseCopyWithImpl<T, PageResponse<T>>(
          this as PageResponse<T>, _$identity);

  /// Serializes this PageResponse to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PageResponse<T> &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, page, totalResults,
      totalPages, const DeepCollectionEquality().hash(results));

  @override
  String toString() {
    return 'PageResponse<$T>(id: $id, page: $page, totalResults: $totalResults, totalPages: $totalPages, results: $results)';
  }
}

/// @nodoc
abstract mixin class $PageResponseCopyWith<T, $Res> {
  factory $PageResponseCopyWith(
          PageResponse<T> value, $Res Function(PageResponse<T>) _then) =
      _$PageResponseCopyWithImpl;
  @useResult
  $Res call(
      {int? id,
      int? page,
      int? totalResults,
      int? totalPages,
      List<T> results});
}

/// @nodoc
class _$PageResponseCopyWithImpl<T, $Res>
    implements $PageResponseCopyWith<T, $Res> {
  _$PageResponseCopyWithImpl(this._self, this._then);

  final PageResponse<T> _self;
  final $Res Function(PageResponse<T>) _then;

  /// Create a copy of PageResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? page = freezed,
    Object? totalResults = freezed,
    Object? totalPages = freezed,
    Object? results = null,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResults: freezed == totalResults
          ? _self.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _self.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      results: null == results
          ? _self.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// Adds pattern-matching-related methods to [PageResponse].
extension PageResponsePatterns<T> on PageResponse<T> {
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
    TResult Function(_PageResponse<T> value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PageResponse() when $default != null:
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
    TResult Function(_PageResponse<T> value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PageResponse():
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
    TResult? Function(_PageResponse<T> value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PageResponse() when $default != null:
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
    TResult Function(int? id, int? page, int? totalResults, int? totalPages,
            List<T> results)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PageResponse() when $default != null:
        return $default(_that.id, _that.page, _that.totalResults,
            _that.totalPages, _that.results);
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
    TResult Function(int? id, int? page, int? totalResults, int? totalPages,
            List<T> results)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PageResponse():
        return $default(_that.id, _that.page, _that.totalResults,
            _that.totalPages, _that.results);
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
    TResult? Function(int? id, int? page, int? totalResults, int? totalPages,
            List<T> results)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PageResponse() when $default != null:
        return $default(_that.id, _that.page, _that.totalResults,
            _that.totalPages, _that.results);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _PageResponse<T> implements PageResponse<T> {
  const _PageResponse(this.id, this.page, this.totalResults, this.totalPages,
      final List<T> results)
      : _results = results;
  factory _PageResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$PageResponseFromJson(json, fromJsonT);

  @override
  final int? id;
  @override
  final int? page;
  @override
  final int? totalResults;
  @override
  final int? totalPages;
  final List<T> _results;
  @override
  List<T> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  /// Create a copy of PageResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PageResponseCopyWith<T, _PageResponse<T>> get copyWith =>
      __$PageResponseCopyWithImpl<T, _PageResponse<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$PageResponseToJson<T>(this, toJsonT);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PageResponse<T> &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, page, totalResults,
      totalPages, const DeepCollectionEquality().hash(_results));

  @override
  String toString() {
    return 'PageResponse<$T>(id: $id, page: $page, totalResults: $totalResults, totalPages: $totalPages, results: $results)';
  }
}

/// @nodoc
abstract mixin class _$PageResponseCopyWith<T, $Res>
    implements $PageResponseCopyWith<T, $Res> {
  factory _$PageResponseCopyWith(
          _PageResponse<T> value, $Res Function(_PageResponse<T>) _then) =
      __$PageResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? id,
      int? page,
      int? totalResults,
      int? totalPages,
      List<T> results});
}

/// @nodoc
class __$PageResponseCopyWithImpl<T, $Res>
    implements _$PageResponseCopyWith<T, $Res> {
  __$PageResponseCopyWithImpl(this._self, this._then);

  final _PageResponse<T> _self;
  final $Res Function(_PageResponse<T>) _then;

  /// Create a copy of PageResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? page = freezed,
    Object? totalResults = freezed,
    Object? totalPages = freezed,
    Object? results = null,
  }) {
    return _then(_PageResponse<T>(
      freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == totalResults
          ? _self.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == totalPages
          ? _self.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      null == results
          ? _self._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

// dart format on
