  import 'package:flutter/material.dart';
  import 'package:momentum/features/dashboard/widgets/quick_stats/quick_stats_section.dart';
  import 'package:momentum/features/dashboard/widgets/greeting_section.dart';
  import 'package:momentum/features/dashboard/widgets/momentum_graph_section.dart';
  import 'package:momentum/features/planner/widgets/planner_card.dart';
  import 'package:momentum/features/dashboard/data/mock_dashboard_data.dart';
  import 'package:momentum/features/habits/widgets/habit_card.dart';
  import '../../../shared/widgets/momentum_temppfp.dart';
  import 'package:momentum/core/theme/app_theme.dart';
  import '../../../shared/widgets/momentum_logo.dart';
  import 'package:momentum/features/habits/models/habit_model.dart';

  class DashboardScreen extends StatelessWidget {
    final List<Habit> habits;
    final ValueChanged<int> onNavigate;
    
    const DashboardScreen({
      super.key,
      required this.onNavigate,
      required this.habits,
    });


    @override
    Widget build(BuildContext context) {
      final dashboardData = mockDashboardData;

      return Scaffold(

        appBar: AppBar(
          scrolledUnderElevation: 0,
          toolbarHeight: 30,
          flexibleSpace: Container(
            child: Column(
        children:  [
          SizedBox(height:30),
          Row(
            children:[
              SizedBox(width: 30),
              MomentumPfp(),
                  ]
                ),
              ],
            ),
          ),
        ),
          body: SafeArea(
          bottom: false,
            child: SingleChildScrollView(
              padding: const EdgeInsets.all( 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

            GreetingSection(username: dashboardData.username),

            const SizedBox(height: 16),
            QuickStatsSection(
              workouts: dashboardData.workouts, 
              streak: dashboardData.streak,),

            const SizedBox(height: 16),

            Text("Today's habits",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontSize: 20
              ),
            ),

            const SizedBox(height: 16),

            //HabitsPreviewSection(habits: dashboardData.habits),
            HabitsCard(
              onTap: () => onNavigate(2),
              isPreview: true,
              habits: habits,
            ),

            const SizedBox(height: 16),
            
             Text(
            "Today's tasks",
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontSize: 20
              ),
            ),

            const SizedBox(height: 16),

            PlannerCard(
              onTap: () => onNavigate(3),
              isPreview: true,
            ),

              const SizedBox(height: 16),

              MomentumGraphSection(
                values: dashboardData.graphValues,
              ),

            ],
            ),
          ),  
        ),
      );
    }
  }