import 'package:flutter/material.dart';
import 'package:momentum/shared/widgets/momentum_checktile.dart';
import 'package:momentum/shared/widgets/momentum_card.dart';
import 'package:momentum/features/habits/models/habit_model.dart';
import 'package:momentum/core/theme/app_theme.dart';
class HabitsPreviewSection extends StatelessWidget {

  final List<Habit> habits;
  const HabitsPreviewSection({
    super.key,
    required this.habits,
  });

  @override
  Widget build(BuildContext context) {
    return MomentumCard(
      padding: EdgeInsets.all(0),
      borderRadius: 0,
      border: Border(
        left: BorderSide(color: AppTheme.primaryOrange, width: 2),
        //right: BorderSide(color: AppTheme.primaryOrange, width: 0.5),
        //top: BorderSide(color: AppTheme.primaryOrange, width: 0.5),
        //bottom: BorderSide(color: AppTheme.primaryOrange, width: 2),
      ),
      child: Column(
        children: [
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