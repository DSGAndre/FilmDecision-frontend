import 'package:filmdecision_frontend/services/language_service.dart';
import 'package:filmdecision_frontend/ui/home/widgets/utils/cinema_button_style.dart';
import 'package:flutter/material.dart';

class CreateRoomButton extends StatelessWidget {
  const CreateRoomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = LanguageService.getLocalizations();

     return CinemaButtonStyle(text: localization.createRoom, onPressed: () {});
  }
}
