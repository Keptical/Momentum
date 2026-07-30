import 'package:flutter/material.dart';

class MomentumButton extends StatelessWidget {

  final String text;
  final VoidCallback onPressed;

  const MomentumButton({
    super.key,
    required this.text,
    required this.onPressed,
  });


  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: double.infinity,

      child: ElevatedButton(

        onPressed: onPressed,

        style: ElevatedButton.styleFrom(

          backgroundColor:
              const Color(0xFFFF6D00),

          foregroundColor:
              Colors.black,

          padding:
              const EdgeInsets.symmetric(
                vertical: 16,
              ),

          shape:
              RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(30),
              ),

          elevation: 0,
        ),

        child: Text(
          text,

          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}