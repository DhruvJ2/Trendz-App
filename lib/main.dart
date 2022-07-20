import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:trendz_app/models/theme.dart';

import 'widgets/slider.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
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
