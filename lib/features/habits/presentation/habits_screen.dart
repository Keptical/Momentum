import 'package:flutter/material.dart';
import 'package:momentum/core/theme/app_theme.dart';
import 'package:momentum/features/habits/presentation/add_habit_screen.dart';
import 'package:momentum/features/habits/widgets/habit_card.dart';
import 'package:momentum/features/habits/widgets/habits_addbutton.dart';
import '../models/habit_model.dart';

class HabitsScreen extends StatelessWidget {
  final List<Habit> habits;
  final ValueChanged<Habit> onHabitAdded;
  final ValueChanged<Habit> onHabitDeleted;
  final ValueChanged<Habit> onHabitEdited;

  const HabitsScreen({
    super.key,
    required this.habits,
    required this.onHabitAdded,
    required this.onHabitDeleted,
    required this.onHabitEdited,
  });


  Future<void> _addHabit(BuildContext context) async {
    final habitName = await Navigator.push<String>(
      context,
      MaterialPageRoute(
        builder: (context) => AddHabitScreen(),
      ),
    );

    if (habitName == null) return;

    onHabitAdded(
      Habit(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        name: habitName,
        completed: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Habits",
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            color: AppTheme.primaryOrange,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Today's habits",
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  fontSize: 20,
                ),
              ),

              const SizedBox(height: 16),

              HabitsCard(
                isPreview: false,
                habits: habits,
              ),

              const SizedBox(height: 16),

              HabitsAddButton(
                onTap: () => _addHabit(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}