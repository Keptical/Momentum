import 'package:flutter/material.dart';
import 'package:momentum/core/theme/app_theme.dart';
import 'package:momentum/features/dashboard/presentation/dashboard_screen.dart';
import 'package:momentum/features/habits/presentation/habits_screen.dart';
import 'package:momentum/features/planner/presentation/planner_screen.dart';
import 'package:momentum/features/profile/presentation/profile_screen.dart';
import 'package:momentum/features/workouts/presentation/workout_screen.dart';
import 'package:momentum/features/habits/models/habit_model.dart';
import 'package:momentum/features/habits/data/habits_data.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({
    super.key,
    });

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState(); 
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {

  int _selectedIndex = 0;

  final List<Habit> _habits = habits;

void _onItemTapped(int index) {
     setState((){
      _selectedIndex = index;

     });
}

@override 
Widget build(BuildContext context) {

  final List<Widget> _screens = [
    DashboardScreen(
      onNavigate: _onItemTapped,
      habits: _habits,
    ), 
    const WorkoutScreen(), 

    HabitsScreen(
      habits: _habits,

      onHabitAdded: (habit) {
        setState(() {
          habits.add(habit);
        });
      },

      onHabitDeleted: (habit) {
        setState(() {
          habits.remove(habit);
        });
      },

      onHabitEdited: (updatedHabit) {
        setState(() {
          final index = habits.indexWhere(
              (habit) => habit.id == updatedHabit.id,
          );

          if (index != -1) {
            habits[index] = updatedHabit;
          }
        });
      },
    ),

    const PlannerScreen(), 
    const ProfileScreen()
  ];
 
    return Scaffold(

        body: _screens[_selectedIndex],
        bottomNavigationBar: NavigationBarTheme(
            data: NavigationBarThemeData(
              indicatorColor: AppTheme.primaryOrange.withValues(alpha: 0.2),
              
              iconTheme: WidgetStateProperty.resolveWith((states) {
                if (states.contains(WidgetState.selected)) {
                  return IconThemeData(
                  color: AppTheme.primaryOrange,
                  );
                }
              
              
              return IconThemeData(
              color: AppTheme.unselectedLightGray,
              );
            }),

            labelTextStyle: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
            return TextStyle(
            color: AppTheme.primaryOrange,
            fontWeight: FontWeight.bold,
              );
            }

            return TextStyle(
            color: AppTheme.unselectedLightGray,
            );
            }),
            ),
          
          child: NavigationBar(

          selectedIndex: _selectedIndex,
          onDestinationSelected: _onItemTapped,

          destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.fitness_center),
            label: 'Workout',
          ),
          NavigationDestination(
            icon: Icon(Icons.check_box),
            label: 'Habits',
          ), 
          NavigationDestination(
            icon: Icon(Icons.calendar_month),
            label: 'Planner',
          ),  
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
  
  
  

