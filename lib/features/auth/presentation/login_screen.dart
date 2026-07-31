import 'package:flutter/material.dart';

import '../../../shared/widgets/momentum_logo.dart';
import '../../../shared/widgets/momentum_button.dart';
import '../../../shared/widgets/momentum_text_field.dart';
import '../../navigation/presentation/main_navigation_screen.dart';
class LoginScreen extends StatefulWidget {

  const LoginScreen({
    super.key
    });

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}


class _LoginScreenState extends State<LoginScreen> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();


  @override
  void dispose() {

    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }


  void login() {

    if (
      emailController.text == "user" &&
      passwordController.text == "pass"
    ) {

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>
              const MainNavigationScreen(),
        ),
      );

    } else {

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            "Incorrect username or password",
          ),
        ),
      );

    }

  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: SafeArea(

        child: Padding(

          padding:
              const EdgeInsets.all(24),

          child: Column(

            mainAxisAlignment:
                MainAxisAlignment.center,

            children: [

              const MomentumLogo(),

              const SizedBox(height: 20),


              const Text(
                "Build momentum. Every day.",
                style: TextStyle(
                  color: Color(0xFFFF6D00),
                  fontSize: 16,
                ),
              ),


              const SizedBox(height: 50),


              MomentumTextField(
                hint: "Email",
                controller: emailController,
              ),


              const SizedBox(height: 16),


              MomentumTextField(
                hint: "Password",
                obscureText: true,
                controller: passwordController,
              ),


              const SizedBox(height: 30),


              MomentumButton(

                text: "Login",

                onPressed: login,

              ),


              const SizedBox(height: 20),


              TextButton(

                onPressed: () {},

                child: const Text(
                  "Don't have an account? Create one",
                  style: TextStyle(
                    color: Color(0xFFFF6D00),
                  ),
                ),

              )

            ],
          ),
        ),
      ),
    );
  }
}