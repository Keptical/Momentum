import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:momentum/shared/widgets/momentum_card.dart';
import 'package:momentum/core/theme/app_theme.dart';

class MomentumGraphSection extends StatelessWidget {
  
  final List<double> values;
  
  const MomentumGraphSection({
    super.key,
    required this.values,
  });

  @override
  Widget build(BuildContext context) {
    return MomentumCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [ 
          Text (
            "Momentum",
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
              ),
             ),
          SizedBox(
        height: 200,
        child: LineChart(
          LineChartData(
          gridData: const FlGridData(show: false),
          
          titlesData: const FlTitlesData(
            show: false,
          ),

          borderData: FlBorderData(
            show: false,
          ),

          lineBarsData: [
            LineChartBarData(
              color: AppTheme.primaryOrange,
              spots: values
              .asMap()
              .entries
              .map(
                (entry) => FlSpot(
                  entry.key.toDouble(),
                  entry.value,
                ),
              )
              .toList(),

              isCurved: true,

              dotData: const FlDotData(
                show: false,
                ),
              ),
            ],
          ),
        ),
      )
     ],
    ),
   );
  }
}