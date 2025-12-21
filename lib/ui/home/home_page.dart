import 'package:filmdecision_frontend/ui/home/widgets/create_room_button.dart';
import 'package:filmdecision_frontend/ui/home/widgets/join_room_button.dart';
import 'package:filmdecision_frontend/ui/home/widgets/lang_button.dart';
import 'package:filmdecision_frontend/services/language_service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = LanguageService.getLocalizations();
    final String appName = localization.appName;

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Text(appName),
        actions: const [LangButton()],
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(appName),
            CreateRoomButton(),
            
            JoinRoomButton()
          ],
        ),
      ),
    );
  }
}
