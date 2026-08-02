import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color primaryOrange = Color(0xFFFF6D00);
  static const Color background = Color(0xFF121212);
  static const Color card = Color.fromARGB(255, 65, 60, 60);
  static const Color unselectedLightGray = Color(0xd3d3d3d3);
  
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: background,

    appBarTheme: const AppBarTheme(
      backgroundColor: background,
      surfaceTintColor: Colors.transparent,
      scrolledUnderElevation: 0,
      ),


    textTheme: GoogleFonts.poppinsTextTheme(
      ThemeData.dark().textTheme,
    ),
    colorScheme: const ColorScheme.dark(
      primary: primaryOrange,
    ),
    cardColor: card,
    useMaterial3: true,
  );
}