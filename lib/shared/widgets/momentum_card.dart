import 'package:flutter/material.dart';
import 'package:momentum/core/theme/app_theme.dart';


class MomentumCard extends StatelessWidget {

  final Widget child;
  final Color backgroundColor;
  final Color borderColor;
  final double borderRadius;
  final double padding;
  final double radius;
  //final VoidCallback? onTap;




  const MomentumCard({
    super.key,

    required this.child,
    this.backgroundColor = AppTheme.primaryOrange,
    this.borderColor = AppTheme.primaryOrange,
    this.borderRadius = 16,
    this.padding = 16,
    this.radius = 16,
    // this.onTap
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(
          color: borderColor,
          width: 2,
        ),
      ),
       child: child,
    );
  }
}

