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
    return SizedBox(
      height: 120,
      child: MomentumCard(
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon),

        const SizedBox(height: 5),

        Text(
        "$value $label",
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontSize: 20,
            //fontWeight: FontWeight.bold,

          ),
       ),
          ],
        ),
      ),
    );
  }
}