import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:popular_movies/localization/app_localizations.dart';
import 'package:popular_movies/localization/transalation/translations.i69n.dart';

extension BuildContextX on BuildContext {
  String get languageCode => Localizations.localeOf(this).toLanguageTag();

  Translations get translations => AppLocalizations.of(this);

  TextTheme get textTheme => Theme.of(this).textTheme;
}
