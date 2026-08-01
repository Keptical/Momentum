import 'package:flutter/material.dart';
import 'package:momentum/shared/widgets/momentum_card.dart';


class PlannerPreviewSection extends StatelessWidget {
  const PlannerPreviewSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const MomentumCard(
      child: Column(
        children: [
          Text("Today's Tasks"),
          Text("No tasks for today!"),
          Text("Enjoy the day off!"),
        ],
      ),
    );
  }
}