import 'package:flutter/material.dart';
import 'package:momentum/core/theme/app_theme.dart';


class MomentumCard extends StatelessWidget {

  final Widget child;
  final Color backgroundColor;
  final Color borderColor;
  final double borderRadius;
  final EdgeInsets padding;
  final Border? border;
  //final VoidCallback? onTap;

  const MomentumCard({
    super.key,

    required this.child,
    this.backgroundColor = AppTheme.background,
    this.borderColor = AppTheme.primaryOrange,
    this.borderRadius = 16,
    this.padding = const EdgeInsets.all(16),
    this.border,
    // this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
        border: border ?? Border.all(color: borderColor.withValues(alpha: 0.5), width: 2),

      ),
       child: child,
    );
  }
}

