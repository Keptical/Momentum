import 'package:flutter/material.dart';
import 'package:momentum/shared/widgets/momentum_card.dart';


class HabitsPreviewSection extends StatelessWidget {
  const HabitsPreviewSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const MomentumCard(
      child: Column(
        children: [
          Text("Today's habits"),
          Text("Read"),
        ],
      ),
    );
  }
}