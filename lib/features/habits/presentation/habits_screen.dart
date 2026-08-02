import 'package:flutter/material.dart';
import 'package:momentum/shared/widgets/momentum_card.dart';
import 'package:momentum/core/theme/app_theme.dart';

class HabitsScreen extends StatelessWidget {
  const HabitsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Habits",
        style: Theme.of(context).textTheme.headlineSmall,
      ),
    ),
      
      
      body: SingleChildScrollView(
        
        child: Column(

         children: [

          MomentumCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Current streak",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                "7 days 🔥",
                style: Theme.of(context).textTheme.headlineMedium,
              )
            ]
          )
          ),
         ],
        ),
      ),
    );
  }
}