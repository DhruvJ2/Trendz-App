import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var defaultTheme = ThemeData(
  primaryColor: Color.fromRGBO(255, 87, 34, 1),
  backgroundColor: Color.fromRGBO(251, 233, 231, 1.0),
  secondaryHeaderColor: Color.fromRGBO(221, 44, 0, 1.0),
  textTheme: TextTheme(
    headlineMedium: GoogleFonts.sourceSansPro(
      color: Colors.white,
      fontSize: 24,
      fontWeight: FontWeight.w600,
      letterSpacing: 2.0,
    ),
    titleMedium: GoogleFonts.sourceSansPro(
      color: Colors.black,
      fontSize: 22,
      fontWeight: FontWeight.w600,
      letterSpacing: 2.0,
    ),
    bodySmall: GoogleFonts.sourceSansPro(
      color: Colors.black,
      fontSize: 16,
      fontWeight: FontWeight.w600,
      letterSpacing: 2.0,
    ),
    bodyMedium: GoogleFonts.sourceSansPro(
      color: Colors.black54,
      fontSize: 18,
      fontWeight: FontWeight.w600,
      letterSpacing: 2.0,
    ),
  ),
  buttonTheme: const ButtonThemeData(
    textTheme: ButtonTextTheme.primary,
    buttonColor: Color.fromRGBO(82, 186, 186, 1.0),
  ),
);
//colors
//orange - #255, 87, 34
//#251, 233, 231
//red - #221, 44, 0