import 'package:flutter/material.dart';
import 'package:momentum/shared/widgets/momentum_card.dart';
import 'package:momentum/shared/widgets/momentum_checktile.dart';
import 'package:momentum/features/planner/models/tasks_model.dart';
import 'package:momentum/core/theme/app_theme.dart';
class PlannerPreviewSection extends StatelessWidget {
  final List<Task> tasks;
  const PlannerPreviewSection({
    super.key,
    required this.tasks,
  });

  @override
  Widget build(BuildContext context) {
    return MomentumCard(
       border: Border(
        left: BorderSide(color: AppTheme.primaryOrange, width: 0.5),
        right: BorderSide(color: AppTheme.primaryOrange, width: 0.5),
        top: BorderSide(color: AppTheme.primaryOrange, width: 0.5),
        bottom: BorderSide(color: AppTheme.primaryOrange, width: 2),
      ),
      child: Column(
        children: [
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