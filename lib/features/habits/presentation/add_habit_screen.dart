import 'package:flutter/material.dart';
import 'package:momentum/shared/widgets/momentum_appbar.dart';
import '../../../shared/widgets/momentum_text_field.dart';
import '../../../shared/widgets/momentum_button.dart';

class AddHabitScreen extends StatefulWidget {
  const AddHabitScreen({super.key});

  @override
  State<AddHabitScreen> createState() => _AddHabitScreenState();
}

class _AddHabitScreenState extends State<AddHabitScreen> {
  final _habitNameController = TextEditingController();

  @override
  void dispose() {
    _habitNameController.dispose();
    super.dispose();
  }

  void _save() {
    final habitName = _habitNameController.text.trim();

    if (habitName.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter a habit name.')),
      );
      return;
    }

    Navigator.pop(context, habitName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: momentumAppBar(context, 'Add habit'),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MomentumTextField(
                hint: 'Habit name',
                controller: _habitNameController,
              ),
              const SizedBox(height: 30),
              MomentumButton(
                text: 'Save habit',
                onPressed: _save,
              ),
            ],
          ),
        ),
      ),
    );
  }
}