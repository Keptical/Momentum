import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryOrange = Color(0xFFFF6D00);
  static const Color background = Color(0xFF121212);
  static const Color card = Color(0xFF1E1E1E);
  static const Color unselectedLightGray = Color(0xd3d3d3d3);

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,

    scaffoldBackgroundColor: background,

    colorScheme: const ColorScheme.dark(
      primary: primaryOrange,
    ),

    cardColor: card,

    useMaterial3: true,

    fontFamily: "Inter",
  );
}