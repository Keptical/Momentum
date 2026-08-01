import 'package:flutter/material.dart';
import 'package:momentum/features/dashboard/widgets/quick_stats/stats_card.dart';
import 'package:momentum/shared/widgets/momentum_card.dart';


class QuickStatsSection extends StatelessWidget {
  
  
  const QuickStatsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(

      children:[

        Expanded(

        child: StatsCard(text: "7 day streak 🔥"),

        ),
        SizedBox(width: 4),

        Expanded(

        child: StatsCard(text: "7 workouts this week!"),

        ),
      ],
      );

  }
}