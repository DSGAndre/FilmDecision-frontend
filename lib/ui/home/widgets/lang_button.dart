import 'package:filmdecision_frontend/services/language_service.dart';
import 'package:flutter/material.dart';

class LangButton extends StatelessWidget {
  const LangButton({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<Locale>(
      icon: const Icon(Icons.language),
      onSelected: (Locale language) {
        LanguageService.changeLanguage(language.languageCode);
      },
      itemBuilder: (_) => const [
        PopupMenuItem(key: ValueKey('en_lang'), value: Locale('en'), child: Text("English")),
        PopupMenuItem(key: ValueKey('fr_lang'), value: Locale('fr'), child: Text("Français")),
      ],
    );
  }
}
