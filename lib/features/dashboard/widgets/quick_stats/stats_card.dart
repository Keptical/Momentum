import 'package:flutter/material.dart';
import 'package:momentum/shared/widgets/momentum_card.dart';

class StatsCard extends StatelessWidget {

final int value;
final String label;
final IconData icon;

const StatsCard({
    super.key,
    required this.value,
    required this.label,
    required this.icon,
  });

  @override 
  Widget build(BuildContext context) {
    return MomentumCard(
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon),

        const SizedBox(height: 8),

        Text(
        "$value",
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontSize: 28,
            fontWeight: FontWeight.bold,

          ),
       ),
       Text(label),
       ],
      ),
    );
  }
}