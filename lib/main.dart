import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'features/auth/presentation/login_screen.dart';

void main() {
  runApp(const MomentumApp());
}

class MomentumApp extends StatelessWidget {
  const MomentumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Momentum",

      debugShowCheckedModeBanner: false,

      theme: AppTheme.darkTheme,

      home: const LoginScreen(),
    );
  }
}