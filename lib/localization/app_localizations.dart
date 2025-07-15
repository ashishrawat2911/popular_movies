import 'package:flutter/widgets.dart';
import 'package:popular_movies/localization/transalation/translations.i69n.dart';
import 'package:popular_movies/localization/transalation/translations_hi.i69n.dart';

final _translations = <String, Translations Function()>{
  'en': () => const Translations(),
  'hi': () => const Translations_hi(),
};

class AppLocalizations {
  const AppLocalizations(this.translations);

  final Translations translations;

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  static final List<Locale> supportedLocales =
      _translations.keys.map((x) => Locale(x)).toList();

  static Translations of(BuildContext context) =>
      Localizations.of<AppLocalizations>(context, AppLocalizations)!
          .translations;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      _translations.keys.contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) =>
      Future.value(AppLocalizations(_translations[locale.languageCode]!()));

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalizations> old) => false;
}
