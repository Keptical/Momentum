import 'package:flutter/material.dart';
import 'package:momentum/shared/widgets/momentum_card.dart';
import 'package:momentum/shared/utils/greeting.dart';
import 'package:momentum/core/theme/app_theme.dart';

class GreetingSection extends StatelessWidget {
final String username;
  const GreetingSection({
    super.key,
    required this.username,
  });

  @override
  Widget build(BuildContext context) {
    return MomentumCard(
       //border: Border(
        //left: BorderSide(color: AppTheme.primaryOrange, width: 2),
        //right: BorderSide(color: AppTheme.primaryOrange, width: 2),
       // top: BorderSide(color: AppTheme.primaryOrange, width: 2),
        //bottom: BorderSide(color: AppTheme.primaryOrange, width: 2),
      //),
      child: Text("${"${getGreeting()} $username"}!")
      
    );
  }
}