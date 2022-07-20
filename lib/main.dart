import 'package:flutter/material.dart';
import 'package:trendz_app/models/theme.dart';
import 'package:trendz_app/pages/login.dart';
import 'package:trendz_app/pages/signup.dart';
import 'package:trendz_app/pages/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: defaultTheme,
      routes: {
        '/': (context) => WelcomeScreen(),
        // '/main': (  context) => Home(),
      },
    );
  }
}
