import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:popular_movies/routes/app_router.gr.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: MoviesRoute.page, initial: true),
        AutoRoute(page: MoviesDetailRoute.page),
      ];
}
