import 'package:flutter/material.dart';
import 'package:momentum/features/auth/presentation/create_login_screen.dart';
import '../../../shared/widgets/momentum_logo.dart';
import '../../../shared/widgets/momentum_button.dart';
import '../../../shared/widgets/momentum_textbutton.dart';
import '../../../shared/widgets/momentum_text_field.dart';
import '../../navigation/presentation/main_navigation_screen.dart';
import 'package:momentum/core/theme/app_theme.dart';

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
          backgroundColor: AppTheme.primaryOrange,
          content: Text(
            "Incorrect username or password",
          ),
        ),
      );

    }

  }

  void createNewLogin() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) =>
          const CreateLoginScreen(),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: SafeArea(

        child: SingleChildScrollView(

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
                  color: AppTheme.primaryOrange,
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

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              Text(
                style: TextStyle( color: AppTheme.primaryOrange),
                "Don't have an account? ",
  
              ),
              MomentumTextButton(
                text: "Create one",

                onPressed: createNewLogin,
                    ),
                  ],),
            ],),
          ),
        ),
      ),
    );
  }
}