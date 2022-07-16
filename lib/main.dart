import 'package:flutter/material.dart';
import 'package:trendz_app/models/theme.dart';

import 'widgets/slider.dart';

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
        '/': (context) => Slidder(),
        // '/main': (context) => Home(),
      },
    );
  }
}
