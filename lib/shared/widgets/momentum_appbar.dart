import 'package:flutter/material.dart';
import 'package:momentum/core/theme/app_theme.dart';

AppBar momentumAppBar(BuildContext context, String title) {
      return AppBar(
          scrolledUnderElevation: 0,
          title: Text(
            title,
            style: Theme.of(context)
            .textTheme
            .headlineSmall
            ?.copyWith(
              color: AppTheme.primaryOrange,
              fontWeight: FontWeight.bold,
      ),
    ),
  );  
}
  