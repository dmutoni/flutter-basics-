import 'package:flutter/material.dart';
import 'package:onboarding_one/on_boarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: OnBoardingScreen());
  }
}
