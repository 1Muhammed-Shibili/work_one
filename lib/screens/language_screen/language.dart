import 'package:a_work/screens/language_screen/language_sheet.dart';
import 'package:flutter/material.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF131418),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              LanguageBotSheet.showLanguageSelectionSheet(context);
            },
            child: const Text(
              "Choose Language",
            )),
      ),
    );
  }
}
