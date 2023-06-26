import 'package:flutter/material.dart';
import 'package:task/theme/theme.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onPressed,
    this.select = false,
    required this.text,
  });

  final void Function()? onPressed;
  final String text;
  final bool? select;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: !select! ? AppColors.blackBlue : AppColors.blackGrey,
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: AppColors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    );
  }
}
