import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:trendz_app/models/theme.dart';
import 'package:trendz_app/pages/favourite.dart';
import 'package:trendz_app/pages/home.dart';
import 'package:trendz_app/pages/login.dart';
import 'package:trendz_app/pages/profile.dart';
import 'package:trendz_app/pages/signup.dart';
import 'package:trendz_app/pages/welcome.dart';
import 'package:trendz_app/pages/slider.dart';
import 'package:provider/provider.dart';
import 'package:trendz_app/pages/wrapper.dart';
import 'package:trendz_app/providers/google_sign_in.dart';
import 'package:trendz_app/services/auth.dart';
import 'package:trendz_app/widgets/HiddenDrawer.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StreamProvider.value(
          value: AuthServices().user  ,
          initialData: null,
        ),
        ChangeNotifierProvider(create: (context) => GoogleSignInProvider()),
      ],
      child: MaterialApp(
        theme: defaultTheme,
        routes: {
          '/': (context) => Wrapper(),
          '/Login': (context) => Login(),
          '/Signup': (context) => SignupPage(),
          '/Welcome': (context) => WelcomeScreen(),
          '/Home': (context) => Home(),
          '/Drawer': (context) => const HiddenDrawer(),
          // '/Toolbar': (context) => CollapsingToolbar(),
          // '/favourite':(context) => Favourite(),
        },
      ),
    );
  }
}
