import 'package:flutter/material.dart';
import 'package:momentum/shared/widgets/momentum_appbar.dart';

class AddHabitScreen extends StatelessWidget {

  const AddHabitScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

  return
  
  Scaffold(

    appBar: momentumAppBar(context, "Habits"),

  );
 }
}