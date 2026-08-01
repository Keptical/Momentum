import 'package:flutter/material.dart';
import 'package:momentum/features/dashboard/widgets/quick_stats/quick_stats_section.dart';
import 'package:momentum/features/dashboard/widgets/greeting_section.dart';
import 'package:momentum/features/dashboard/widgets/habits_preview.dart';
import 'package:momentum/features/dashboard/widgets/momentum_graph_section.dart';
import 'package:momentum/features/dashboard/widgets/planner_preview.dart';


class DashboardScreen extends StatelessWidget {

  
  const DashboardScreen({
    super.key,
  });

   


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text(
          "Momentum",
          style: TextStyle(
            color: Color(0xFFFF6D00),
            fontWeight: FontWeight.bold,
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

          const GreetingSection(),
          const SizedBox(height: 16),
          const QuickStatsSection(),
          const SizedBox(height: 16),
          const MomentumGraphSection(
            values: [
  2,
  4,
  3,
  7,
  5,
  8,
  10,
    ],
          ),
          const SizedBox(height: 16),
          const HabitsPreviewSection(),
          const SizedBox(height: 16),
          const PlannerPreviewSection(),
          

            ],
          )
        ),  
      ),
    );
  }
}