import 'package:flutter/material.dart';
import 'package:momentum/shared/widgets/momentum_card.dart';
import 'package:momentum/shared/widgets/momentum_checktile.dart';
import '../data/habits_data.dart';
class HabitsCard extends StatelessWidget {
  final VoidCallback? onTap;

  const HabitsCard({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: MomentumCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            ...habits.map(
              (habit) => IgnorePointer(
                ignoring: false,
                child: MomentumCheckbox(
                  string: habit.name,
                  completed: habit.completed,
                  onChanged: (value) {},
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}