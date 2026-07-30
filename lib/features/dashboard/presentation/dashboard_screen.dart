import 'package:flutter/material.dart';


class DashboardScreen extends StatelessWidget {

  const DashboardScreen({
    super.key,
  });


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text(
          "Momentum",
          style: TextStyle(
            color: Color(0xFFFF6D00),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),


      body: const Center(

        child: Text(
          "Dashboard coming soon 🚀",
          style: TextStyle(
            fontSize: 24,
          ),
        ),

      ),

    );

  }
}