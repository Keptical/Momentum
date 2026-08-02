import 'package:flutter/material.dart';
import 'package:momentum/shared/widgets/momentum_card.dart';
import 'package:momentum/shared/utils/greeting.dart';


class GreetingSection extends StatelessWidget {
final String username;
  const GreetingSection({
    super.key,
    required this.username,
  });

  @override
  Widget build(BuildContext context) {
    return MomentumCard(
      child: Text("${getGreeting() + " " + username}!")
      
    );
  }
}