import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var defaultTheme = ThemeData(
  primaryColor: Color.fromRGBO(82, 186, 186, 1),
  backgroundColor: Color.fromRGBO(247, 237, 223, 1),
  textTheme: TextTheme(
    titleMedium: GoogleFonts.sourceSansPro(
      color: Colors.black,
      fontSize: 24,
      fontWeight: FontWeight.w600,
      letterSpacing: 2.0,
    ),
    bodySmall: GoogleFonts.sourceSansPro(
      color: Colors.black,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 2.0,
    ),
    bodyMedium: GoogleFonts.sourceSansPro(
      color: Colors.black,
      fontSize: 18,
      fontWeight: FontWeight.w400,
      letterSpacing: 2.0,
    ),
  ),
  buttonTheme: const ButtonThemeData(
    textTheme: ButtonTextTheme.primary,
    buttonColor: Color.fromRGBO(82, 186, 186, 1),
  ),
);
//colors 
// cyan (82, 186, 186)
// light cyan (17, 153, 145)
// beige (234, 218, 195)
// light beige(247, 237, 223)
