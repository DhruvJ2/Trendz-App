import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:trendz_app/models/theme.dart';
import 'package:trendz_app/pages/home.dart';
import 'package:trendz_app/pages/login.dart';
import 'package:trendz_app/pages/signup.dart';
import 'package:trendz_app/pages/welcome.dart';
import 'package:trendz_app/pages/slider.dart';

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
        '/': (context) => const Home(),
        '/Login': (context) => Login(),
        '/Signup': (context) => SignupPage(),
        '/Welcome': (context) => WelcomeScreen(),
        // '/Home': (context) => const Home(),
        // '/Toolbar': (context) => CollapsingToolbar(),
        // '/favourite':(context) => Favourite(),
      },
    );
  }
}
