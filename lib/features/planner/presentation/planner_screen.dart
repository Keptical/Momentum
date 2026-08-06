import 'package:flutter/material.dart';
import 'package:momentum/core/theme/app_theme.dart';
import 'package:momentum/features/planner/widgets/planner_card.dart';
//import 'package:momentum/features/planner/widgets/planner_addbutton.dart';

class PlannerScreen extends StatelessWidget {


  const PlannerScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(
          "Habits",
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(
            color: AppTheme.primaryOrange,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [

                Text("Today's task's",
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontSize: 20
                  ),
                ),

                const SizedBox(height: 16),

                const PlannerCard(
                  isPreview: false,
                ),

                const SizedBox(height: 16),

                //const TasksAddButton()
              ]
          ),
        ),
      ),
    );
  }
}