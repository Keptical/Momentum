import 'package:flutter/material.dart';
import 'package:momentum/core/theme/app_theme.dart';


class MomentumCard extends StatelessWidget {

  final Widget child;
  final Color backgroundColor;
  final Color borderColor;
  final double borderRadius;
  final EdgeInsets padding;
  //final VoidCallback? onTap;




  const MomentumCard({
    super.key,

    required this.child,
    this.backgroundColor = AppTheme.card,
    this.borderColor = AppTheme.primaryOrange,
    this.borderRadius = 16,
    this.padding = const EdgeInsets.all(16),
    // this.onTap
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.25),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
       child: child,
    );
  }
}

