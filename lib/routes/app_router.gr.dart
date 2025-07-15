// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:popular_movies/presentation/features/movie_detail/view/movie_details_screen.dart'
    as _i1;
import 'package:popular_movies/presentation/features/movies/view/movies_screen.dart'
    as _i2;

/// generated route for
/// [_i1.MoviesDetailScreen]
class MoviesDetailRoute extends _i3.PageRouteInfo<MoviesDetailRouteArgs> {
  MoviesDetailRoute({
    required int id,
    _i4.Key? key,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          MoviesDetailRoute.name,
          args: MoviesDetailRouteArgs(id: id, key: key),
          initialChildren: children,
        );

  static const String name = 'MoviesDetailRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MoviesDetailRouteArgs>();
      return _i1.MoviesDetailScreen(args.id, key: args.key);
    },
  );
}

class MoviesDetailRouteArgs {
  const MoviesDetailRouteArgs({required this.id, this.key});

  final int id;

  final _i4.Key? key;

  @override
  String toString() {
    return 'MoviesDetailRouteArgs{id: $id, key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! MoviesDetailRouteArgs) return false;
    return id == other.id && key == other.key;
  }

  @override
  int get hashCode => id.hashCode ^ key.hashCode;
}

/// generated route for
/// [_i2.MoviesScreen]
class MoviesRoute extends _i3.PageRouteInfo<void> {
  const MoviesRoute({List<_i3.PageRouteInfo>? children})
      : super(MoviesRoute.name, initialChildren: children);

  static const String name = 'MoviesRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i2.MoviesScreen();
    },
  );
}
