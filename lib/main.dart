import 'package:flutter/material.dart';
import 'package:flutter_application_6_menu/screens/main_screen.dart';
import 'package:flutter_application_6_menu/screens/meal_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
