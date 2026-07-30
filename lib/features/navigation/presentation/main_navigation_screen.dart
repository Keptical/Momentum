import 'package:flutter/material.dart';

class MainNavigationScreen extends StatefulWidget {

  const MainNavigationScreen({
    super.key,
    });


  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState(); 
}


class _MainNavigationScreenState extends State<MainNavigationScreen> {
  

  int _selectedIndex = 0;



void _onItemTapped(int index) {
     setState((){

    _selectedIndex = index;

     });
}

@override 
Widget build(BuildContext context) {
 
    return Scaffold(
      body: Center(
        child: _selectedIndex == 0
            ? const Text("Home Screen")
            : _selectedIndex == 1
                ? const Text("Search Screen")
                : const Text("Profile Screen"),
      ),
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
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
  
  
  

