import 'package:filmdecision_frontend/l10n/app_localizations_en.dart';
import 'package:filmdecision_frontend/l10n/app_localizations_fr.dart';
import 'package:flutter/widgets.dart';

class LanguageService {
  static final ValueNotifier<Locale> currentLanguage = ValueNotifier(
    const Locale('en'),
  );

  static final ValueNotifier<dynamic> currentLocalizations = ValueNotifier(
    AppLocalizationsEn(),
  );

  static dynamic getLocalizations() => currentLocalizations.value;

  static void changeLanguage(String languageCode) {
    currentLanguage.value = Locale(languageCode);
    
    if (languageCode == 'fr') {
      currentLocalizations.value = AppLocalizationsFr();
    } else {
      currentLocalizations.value = AppLocalizationsEn();
    }
  }

  static void loadInitialLanguage() {
    WidgetsFlutterBinding.ensureInitialized();
    final systemLocale = WidgetsBinding.instance.platformDispatcher.locale;
    final systemLanguage = (systemLocale.languageCode == 'fr') ? 'fr' : 'en';
    changeLanguage(systemLanguage);
  }
}
