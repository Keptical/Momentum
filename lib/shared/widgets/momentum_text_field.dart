import 'package:flutter/material.dart';
import 'package:momentum/core/theme/app_theme.dart';

class MomentumTextField extends StatelessWidget {

  final String hint;
  final bool obscureText;
  final TextEditingController? controller;


  const MomentumTextField({

    super.key,

    required this.hint,

    this.obscureText = false,

    this.controller,

  });


  @override
  Widget build(BuildContext context) {

    const orange = AppTheme.primaryOrange;

    return TextField(

      controller: controller,

      obscureText: obscureText,

      textAlign: TextAlign.center,
      style: const TextStyle(
        color: orange,

      ),

      cursorColor: orange,

      decoration: InputDecoration(

        hintText: hint,

        hintStyle: const TextStyle(
          color: orange,
        ),

        filled: true,

        fillColor:
            AppTheme.background,
        
        enabledBorder: OutlineInputBorder(

          borderRadius:
              BorderRadius.circular(30),


          borderSide:
              const BorderSide(

                color: orange,

                width: 1.5,

              ),

        ),



        focusedBorder: OutlineInputBorder(

          borderRadius:
              BorderRadius.circular(30),


          borderSide:
              const BorderSide(

                color: orange,

                width: 2.5,

              ),

        ),

      ),

    );

  }

}