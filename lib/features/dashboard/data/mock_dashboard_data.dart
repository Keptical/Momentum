import 'package:momentum/shared/models/dashboard_data.dart';
import 'package:momentum/features/habits/models/habit_model.dart';
import 'package:momentum/features/planner/models/tasks_model.dart';

final mockDashboardData = DashboardData(
  graphValues: [2, 4, 3, 7, 5, 8, 3, 10],
  workouts: 12,
  streak: 5,
  username: 'Matt',
  habits: [
    Habit(
      name: "Drink water", 
      completed: true,
    ),
    Habit(
      name: "Gym",
      completed: false,
    ),
    Habit(
      name: "Read",
      completed: false,
    )
  ],
  tasks: [
    Task(
      name: "Make bed", 
      completed: true,
    ),
    Task(
      name: "Shower",
      completed: false,
    ),
    Task(
      name: "Buy protein powder",
      completed: false,
    ),
  ],
);