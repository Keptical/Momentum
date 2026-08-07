import 'package:flutter/material.dart';
import 'package:momentum/features/dashboard/widgets/quick_stats/stats_card.dart';
class QuickStatsSection extends StatelessWidget {
  
  final int workouts;
  final int streak;

  const QuickStatsSection({
    super.key,
    required this.workouts,
    required this.streak,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[

        StatsCard(
          icon: Icons.local_fire_department,
          value: streak,
          label: "Day Streak",
        ),


        SizedBox(height: 16),

        StatsCard(
          icon: Icons.fitness_center,
          value: workouts,
          label: "Workouts this Week",
        ),
      ],
      );

  }
}