import 'package:flutter/material.dart';
import 'package:momentum/features/habits/presentation/add_habit_screen.dart';
import '../../../shared/widgets/momentum_button.dart';

class HabitsAddButton extends StatelessWidget{
  const HabitsAddButton({
    super.key,
  });

  void addHabitButtonPressed(BuildContext context) {
    Navigator.push(
      context, 
      MaterialPageRoute(
        builder: (context) => const AddHabitScreen(),
      ),
    );
   }

  @override
  Widget build(BuildContext context) {

   return MomentumButton(
    text: "Add Habit",
    onPressed: () => addHabitButtonPressed(context),
   );
  }
}
