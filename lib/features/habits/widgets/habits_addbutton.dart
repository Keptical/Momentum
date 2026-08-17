import 'package:flutter/material.dart';
import 'package:momentum/features/habits/presentation/add_habit_screen.dart';
import '../../../shared/widgets/momentum_button.dart';

class HabitsAddButton extends StatelessWidget{

  final VoidCallback onTap;

  const HabitsAddButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {

   return MomentumButton(
    text: "Add Habit",
    onPressed: onTap,
   );
  }
}
