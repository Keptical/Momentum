import 'package:flutter/material.dart';
import 'package:momentum/shared/widgets/momentum_card.dart';
import 'package:momentum/shared/widgets/momentum_checkTile.dart';
import '../data/habits_data.dart';

class HabitsCard extends StatelessWidget {
  const HabitsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MomentumCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              ...habits.map(
                (habit) => MomentumCheckbox(
                  string: habit.name,
                  completed: habit.completed,
                  onChanged: (value) {},
            ),
          ),
        ],
      ),
    );
  }
}
