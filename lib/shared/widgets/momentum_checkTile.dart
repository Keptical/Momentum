import 'package:flutter/material.dart';
import 'package:momentum/core/theme/app_theme.dart';


class MomentumCheckbox extends StatelessWidget {
  final String string;
  final bool completed;
  final ValueChanged<bool?> onChanged;

  const MomentumCheckbox({
    super.key,
    required this.string,
    required this.completed,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(string),
      value: completed,
      onChanged: onChanged,
      controlAffinity: ListTileControlAffinity.leading,
      side: const BorderSide(color: AppTheme.primaryOrange,
      width: 2),
      activeColor: AppTheme.primaryOrange,
      checkColor: Colors.white,
    );
  }
}