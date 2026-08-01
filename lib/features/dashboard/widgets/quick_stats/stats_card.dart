import 'package:flutter/material.dart';
import 'package:momentum/shared/widgets/momentum_card.dart';
class StatsCard extends StatelessWidget {
final String text;

  const StatsCard({
    super.key,
    this.text = "7 workouts this week!",
  });

  @override 
  Widget build(BuildContext context) {
    return MomentumCard(
      child: Text(text)
    );
  }
}