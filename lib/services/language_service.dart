import 'package:flutter/widgets.dart';

class LanguageService {
  static final ValueNotifier<Locale> currentLanguage = ValueNotifier(
    const Locale('en'),
  );

  static Locale get locale => currentLanguage.value;

  static void changeLanguage(String languageCode) {
    currentLanguage.value = Locale(languageCode);
  }

  static void loadInitialLanguage() {
    WidgetsFlutterBinding.ensureInitialized();
    final systemLocale = WidgetsBinding.instance.platformDispatcher.locale;
    final systemLanguage = (systemLocale.languageCode == 'fr') ? 'fr' : 'en';
    changeLanguage(systemLanguage);
  }
}
