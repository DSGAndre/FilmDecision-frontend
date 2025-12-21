import 'package:filmdecision_frontend/services/language_service.dart';
import 'package:filmdecision_frontend/ui/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
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
          builder: (context, child) {
            return Stack(
              fit: StackFit.expand,
              children: [
                Positioned.fill(
                  child: Image.asset(
                    'assets/images/background.png',
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) =>
                        Container(color: Colors.black),
                  ),
                ),
                child ?? const SizedBox.shrink(),
              ],
            );
          },
          title: 'FilmDecision',
          theme: ThemeData(
            textTheme: GoogleFonts.openSansTextTheme(),
            colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 50, 50, 50),
              secondary: const Color.fromARGB(255, 248, 159, 100),
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
          home: HomePage(),
        );
      },
    );
  }
}
