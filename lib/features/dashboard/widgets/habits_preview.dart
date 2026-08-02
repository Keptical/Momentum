import 'package:flutter/material.dart';
import 'package:momentum/shared/widgets/momentum_checkbox.dart';
import 'package:momentum/shared/widgets/momentum_card.dart';
import 'package:momentum/features/habits/models/habit_model.dart';

class HabitsPreviewSection extends StatelessWidget {
final List<Habit> habits;
  const HabitsPreviewSection({
    super.key,
    required this.habits,
  });

  @override
  Widget build(BuildContext context) {
    return MomentumCard(
      child: Column(
        children: [
          Text(
            "Today's habits",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          ...habits.map(
            (habit) => MomentumCheckbox(
            string: habit.name,
            completed: habit.completed,
            onChanged: (value) {
          },
          ),
          ),
        ],
      ),
    );
  }
}