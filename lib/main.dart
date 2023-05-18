import 'package:flutter/material.dart';
import 'package:mightybrowser/app/screens/intro/splash/SplashScreen.dart';
/*
  Project: Mighty Browser
  Author: Muhammad Fiaz
  GitHub: https://github.com/muhammad-fiaz
*/
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

