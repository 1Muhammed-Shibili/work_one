import 'package:a_work/screens/language_screen/controller.dart';
import 'package:a_work/screens/language_screen/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.put(LanguageController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LanguageScreen(),
    );
  }
}
