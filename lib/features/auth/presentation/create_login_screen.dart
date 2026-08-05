import 'package:flutter/material.dart';
import 'package:momentum/core/theme/app_theme.dart';
import 'package:momentum/shared/widgets/momentum_appbar.dart';

class CreateLoginScreen extends StatelessWidget {

  const CreateLoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: momentumAppBar(context, "Create login" ),
    );
  }
}
