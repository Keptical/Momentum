import 'package:flutter/material.dart';
import 'package:momentum/core/theme/app_theme.dart';

class MomentumPfp extends StatelessWidget {
  final double size;

  const MomentumPfp({
    super.key,
    this.size = 30,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        // Temporary pfp placeholder
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppTheme.primaryOrange,
          ),

          child: const Icon(
            Icons.arrow_upward,
            color: Colors.black,
            size: 20,
          ),
        ),

      ],
    );
  }
}