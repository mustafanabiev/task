import 'package:flutter/material.dart';
import 'package:task/modules/modules.dart';
import 'package:task/theme/colors/app_colors.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.blackBlue),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}
