import 'package:flutter/material.dart';
import 'package:popular_movies/di/di.dart';
import 'package:popular_movies/localization/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:popular_movies/routes/app_router.dart';
import 'package:popular_movies/theme/theme.dart';

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: inject<AppRouter>().config(),
      theme: theme(),
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        AppLocalizations.delegate,
      ],
    );
  }
}
