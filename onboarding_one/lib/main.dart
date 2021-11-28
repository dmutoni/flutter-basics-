import 'package:flutter/material.dart';
import 'package:onboarding_one/onboarding_one.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My cool first flutter app',
        home: Scaffold(
            appBar: AppBar(
              title: const Text("My first flutter app"),
            ),
            body: const OnBoardingOne()));
  }
}
