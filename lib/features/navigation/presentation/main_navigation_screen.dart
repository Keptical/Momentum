import 'package:flutter/material.dart';
import 'package:momentum/core/theme/app_theme.dart';
import 'package:momentum/features/dashboard/presentation/dashboard_screen.dart';
import 'package:momentum/features/habits/presentation/habits_screen.dart';
import 'package:momentum/features/planner/presentation/planner_screen.dart';
import 'package:momentum/features/profile/presentation/profile_screen.dart';
import 'package:momentum/features/workouts/presentation/workout_screen.dart';

class MainNavigationScreen extends StatefulWidget {

  const MainNavigationScreen({
    super.key,
    });


  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState(); 
}


class _MainNavigationScreenState extends State<MainNavigationScreen> {


  int _selectedIndex = 0;
  final List<Widget> _screens = [
    DashboardScreen(), 
    const WorkoutScreen(), 
    const HabitsScreen(), 
    const PlannerScreen(), 
    const ProfileScreen()
  ];


void _onItemTapped(int index) {
     setState((){
      _selectedIndex = index;
     _screens[_selectedIndex];

     });
}

@override 
Widget build(BuildContext context) {
 
    return Scaffold(

        body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'Workout',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_box),
            label: 'Habits',
          ), 
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Planner',
          ),  
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: AppTheme.unselectedLightGray,
        selectedItemColor: AppTheme.primaryOrange,
        onTap: _onItemTapped,
      ),
    );
  }
}
  
  
  

