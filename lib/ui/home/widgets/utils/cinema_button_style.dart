import 'package:flutter/material.dart';

class CinemaButtonStyle extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const CinemaButtonStyle({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final minButtonWidth = screenWidth * 0.4;
    final minButtonHeight = screenHeight * 0.06;

    return Container(
      width: minButtonWidth,
      margin: const EdgeInsets.only(top: 50.0, bottom: 50.0),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 252, 161, 77),
            Color.fromARGB(255, 245, 202, 137),
          ],
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          minimumSize: Size(minButtonWidth, minButtonHeight),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
