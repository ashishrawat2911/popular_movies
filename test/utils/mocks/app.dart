import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:popular_movies/localization/app_localizations.dart';
import 'package:popular_movies/routes/app_router.dart';

Widget buildTestableWidget(Widget child) {
  return MaterialApp(
    home: child,
    supportedLocales: AppLocalizations.supportedLocales,
    localizationsDelegates: const [
      GlobalMaterialLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      AppLocalizations.delegate,
    ],
  );
}

class TestRouter extends AppRouter {
  final List<AutoRoute> appRoutes;

  TestRouter(this.appRoutes);

  @override
  List<AutoRoute> get routes => appRoutes;
}
