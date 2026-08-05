import 'package:flutter/material.dart';
import 'package:momentum/core/theme/app_theme.dart';

class MomentumTextButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;

  const MomentumTextButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  State<MomentumTextButton> createState() => _MomentumTextButtonState();
}

class _MomentumTextButtonState extends State<MomentumTextButton> {

  bool pressed = false;

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          pressed = true;
        });
      },

      onTapUp: (_) {
        setState(() {
          pressed = false;
        });
        widget.onPressed();
      },

      onTapCancel: () {
        setState(() {
          pressed = false;
        });
      },

        child: AnimatedScale(
          scale: pressed ? 0.96 : 1,
          duration: const Duration(milliseconds: 120),
               child: Center(
                child: Text(
                  widget.text,
                  style: const TextStyle(
                    color: AppTheme.primaryOrange,
                    fontSize: 16,
            ),
          ),
        )
      )
    );
  }
}