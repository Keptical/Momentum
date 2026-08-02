import 'package:flutter/material.dart';
import 'package:momentum/core/theme/app_theme.dart';
import 'package:momentum/features/habits/widgets/habit_card.dart';
class HabitsScreen extends StatelessWidget {


  const HabitsScreen({
    super.key,
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Habits",
        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
          color: AppTheme.primaryOrange,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),

      body: SafeArea(
      bottom: false,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [

         Text(
                "Todays's habit's",
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontSize: 20
                ),
              ),
              const SizedBox(height: 16),

              const HabitsCard(),
            ]
          ),
        ),
      ),
    );
  }
}