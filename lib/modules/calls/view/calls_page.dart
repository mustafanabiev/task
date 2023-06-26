import 'package:flutter/material.dart';
import 'package:task/theme/theme.dart';

class CallsPage extends StatelessWidget {
  const CallsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: const Text('CallsPage'),
      ),
      backgroundColor: AppColors.backgroundColor,
    );
  }
}
