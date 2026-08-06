import 'package:flutter/material.dart';
import 'package:momentum/shared/widgets/momentum_card.dart';
import 'package:momentum/shared/widgets/momentum_checktile.dart';
import '../data/planner_data.dart';

class PlannerCard extends StatefulWidget {

  final VoidCallback? onTap;
  final bool isPreview;

  const PlannerCard({
    super.key,
    this.onTap,
    required this.isPreview,
  });

  @override
  State<PlannerCard> createState() => _PlannerCardState();
}

class _PlannerCardState extends State<PlannerCard> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: MomentumCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            ...tasks.map(
                  (task) => IgnorePointer(
                ignoring: widget.isPreview,
                child: MomentumCheckbox(
                  string: task.name,
                  completed: task.completed,
                  onChanged: (value) {
                    setState(() {
                      task.completed = value!;
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