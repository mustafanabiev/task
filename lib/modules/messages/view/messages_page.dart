import 'package:flutter/material.dart';
import 'package:task/theme/theme.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: const Text('MessagesPage'),
      ),
      backgroundColor: AppColors.backgroundColor,
    );
  }
}
