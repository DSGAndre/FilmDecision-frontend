import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:filmdecision_frontend/main.dart';
import 'package:filmdecision_frontend/services/language_service.dart';

void main() {
  _testDefaultLangEnglish();
  _testDefaultLangFrench();

  _testButtonPressLangFR();
  _testButtonPressLangEN();
}

void _testDefaultLangEnglish() {
  testWidgets('Default language is English', (WidgetTester tester) async {
    _setupLocale('en');
    LanguageService.loadInitialLanguage();
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    const traductionEnglishTitleExpected = 'FilmDecisionEN';
    const traductionFrenchTitleNotExpected = 'FilmDecisionFR';
    expect(find.text(traductionEnglishTitleExpected), findsAtLeast(1));
    expect(find.text(traductionFrenchTitleNotExpected), findsNothing);
  });
}

void _testDefaultLangFrench() {
  testWidgets('Default language is french', (WidgetTester tester) async {
    _setupLocale('fr');
    LanguageService.loadInitialLanguage();
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    const traductionFrenchTitleExpected = 'FilmDecisionFR';
    const traductionEnglishTitleNotExpected = 'FilmDecisionEN';
    expect(find.text(traductionFrenchTitleExpected), findsAtLeast(1));
    expect(find.text(traductionEnglishTitleNotExpected), findsNothing);
  });
}

void _testButtonPressLangFR() {
  testWidgets('French button language selected', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    final langButtonGiven = find.byIcon(Icons.language);

    await tester.tap(langButtonGiven);
    await tester.pumpAndSettle();
    final frenchLangButtonGiven = find.byKey(const ValueKey('fr_lang'));
    await tester.tap(frenchLangButtonGiven);
    await tester.pumpAndSettle();

    const traductionFrenchTitleExpected = 'FilmDecisionFR';
    const traductionEnglishTitleNotExpected = 'FilmDecisionEN';
    expect(find.text(traductionFrenchTitleExpected), findsAtLeast(1));
    expect(find.text(traductionEnglishTitleNotExpected), findsNothing);
  });
}

void _testButtonPressLangEN() {
  testWidgets('English button language selected', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    final langButtonGiven = find.byIcon(Icons.language);

    await tester.tap(langButtonGiven);
    await tester.pumpAndSettle();
    final englishLangButtonGiven = find.byKey(const ValueKey('en_lang'));
    await tester.tap(englishLangButtonGiven);
    await tester.pumpAndSettle();

    const traductionEnglishTitleExpected = 'FilmDecisionEN';
    const traductionFrenchTitleNotExpected = 'FilmDecisionFR';
    expect(find.text(traductionEnglishTitleExpected), findsAtLeast(1));
    expect(find.text(traductionFrenchTitleNotExpected), findsNothing);
  });
}

void _setupLocale(final String languageCode) {
  final binding = TestWidgetsFlutterBinding.ensureInitialized();
  binding.platformDispatcher.localeTestValue = Locale(languageCode);
}
