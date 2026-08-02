import 'package:momentum/features/habits/models/habit_model.dart';
import 'package:momentum/features/planner/models/tasks_model.dart';

class DashboardData {
  final List<double> graphValues;
  final int workouts, streak;
  final String username;
  final List<Task> tasks; 
  final List<Habit> habits;

  const DashboardData({
    required this.graphValues,
    required this.workouts,
    required this.streak,
    required this.username,
    required this.habits,
    required this.tasks,
  });
}

