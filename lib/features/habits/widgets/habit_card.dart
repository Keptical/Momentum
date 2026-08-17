import 'package:flutter/material.dart';
import 'package:momentum/shared/widgets/momentum_card.dart';
import 'package:momentum/shared/widgets/momentum_checktile.dart';
import '../models/habit_model.dart';
import 'package:momentum/features/habits/data/habits_data.dart';

class HabitsCard extends StatefulWidget {

  final VoidCallback? onTap;
  final bool isPreview;
  final List<Habit> habits;

  const HabitsCard({
    super.key,
    this.onTap,
    required this.isPreview,
    required this.habits,
  });

  @override
  State<HabitsCard> createState() => _HabitsCardState();
}

class _HabitsCardState extends State<HabitsCard> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: MomentumCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            ...widget.habits.map(
              (habit) => IgnorePointer(
                ignoring: widget.isPreview,
                child: MomentumCheckbox(
                  string: habit.name,
                  completed: habit.completed,
                  onChanged: (value) {
                    setState(() {
                      habit.completed = value!;
                      });
                    },
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}