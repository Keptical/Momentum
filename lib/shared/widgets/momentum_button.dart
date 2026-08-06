import 'package:flutter/material.dart';
import 'package:momentum/core/theme/app_theme.dart';

class MomentumButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;

  const MomentumButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  State<MomentumButton> createState() => _MomentumButtonState();
}

class _MomentumButtonState extends State<MomentumButton> {

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

        child: SizedBox(
          width: double.infinity,

          child: Container(
            decoration: BoxDecoration(
              color: AppTheme.background,
              borderRadius: BorderRadius.circular(18),
                //topLeft: Radius.circular(18),
                //topRight: Radius.circular(18),
                //bottomLeft: Radius.circular(18),
                //bottomRight: Radius.circular(18),
              //),

              border: Border(
                top: BorderSide(
                  color: AppTheme.primaryOrange,//.withValues(alpha: 0.5),
                  width: 1,
                ),
                bottom: BorderSide(
                  color: AppTheme.primaryOrange,//.withValues(alpha: 0.5),
                  width: 3,
                ),
                left: BorderSide(
                  color: AppTheme.primaryOrange,//.withValues(alpha: 0.5),
                  width: 1,
                ),
                right: BorderSide(
                  color: AppTheme.primaryOrange,//.withValues(alpha: 0.5),
                  width: 1,
                ),
              ),
            ),

            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16,
              ),

              child: Center(
                child: Text(
                  widget.text,

                  style: const TextStyle(
                    color: AppTheme.primaryOrange,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}