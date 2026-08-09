import 'package:flutter/material.dart';
import 'package:momentum/core/theme/app_theme.dart';

class MomentumLogo extends StatelessWidget {
  final double size;

  const MomentumLogo({
    super.key,
    this.size = 80,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        // Temporary logo placeholder
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: const LinearGradient(
              colors: [
                AppTheme.primaryOrange,
                AppTheme.background,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),

          child: const Icon(
            Icons.arrow_upward,
            color: Colors.black,
            size: 45,
          ),
        ),

        const SizedBox(height: 16),

        const Text(
          "Momentum",
          style: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.bold,
            color: AppTheme.primaryOrange,
          ),
        ),
      ],
    );
  }
}