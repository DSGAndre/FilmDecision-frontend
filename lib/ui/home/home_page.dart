import 'package:filmdecision_frontend/l10n/app_localizations.dart';
import 'package:filmdecision_frontend/l10n/app_localizations_en.dart';
import 'package:filmdecision_frontend/ui/home/widgets/lang_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context) ?? AppLocalizationsEn();
    final String appName = localization.appName;

    return Scaffold(
      appBar: AppBar(title: Text(appName), actions: const [LangButton()]),
      body: Center(child: Text(appName)),
    );
  }
}
