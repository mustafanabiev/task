import 'package:flutter/material.dart';
import 'package:task/theme/theme.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: const Text('ContactsPage'),
      ),
      backgroundColor: AppColors.backgroundColor,
    );
  }
}
