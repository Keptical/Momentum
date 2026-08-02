import 'package:flutter/material.dart';
import 'package:momentum/shared/widgets/momentum_card.dart';
import 'package:momentum/shared/widgets/momentum_checkTile.dart';
import 'package:momentum/features/planner/models/tasks_model.dart';

class PlannerPreviewSection extends StatelessWidget {
  final List<Task> tasks;
  const PlannerPreviewSection({
    super.key,
    required this.tasks,
  });

  @override
  Widget build(BuildContext context) {
    return MomentumCard(
      child: Column(
        children: [
          Text(
            "Today's tasks",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          ...tasks.map(
            (tasks) => MomentumCheckbox(
            string: tasks.name,
            completed: tasks.completed,
            onChanged: (value) {
          },
          ),
          ),
        ],
      ),
    );
  }
}