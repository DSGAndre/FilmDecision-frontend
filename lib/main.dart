import 'package:filmdecision_frontend/services/language_service.dart';
import 'package:filmdecision_frontend/ui/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'l10n/app_localizations.dart';

void main() {
  LanguageService.loadInitialLanguage();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Locale>(
      valueListenable: LanguageService.currentLanguage,
      builder: (context, newLanguage, _) {
        return MaterialApp(
          title: 'FilmDecision',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(200, 7, 7, 7),
            ),
          ),
          supportedLocales: const [Locale('en', ''), Locale('fr', '')],
          locale: newLanguage,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          home: const HomePage(),
        );
      },
    );
  }
}
