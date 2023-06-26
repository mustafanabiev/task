import 'package:flutter/material.dart';
import 'package:task/theme/theme.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({
    super.key,
    required this.phoneNumber,
    required this.name,
  });
  final String phoneNumber;
  final String name;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(
        Icons.phone_android_outlined,
        color: AppColors.blackBlue,
      ),
      title: Text(
        phoneNumber,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        name,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: SizedBox(
        width: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: AppColors.blackBlue,
                borderRadius: BorderRadius.circular(60),
              ),
              child: const Center(
                child: Text(
                  'S',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: AppColors.blackBlue,
                borderRadius: BorderRadius.circular(60),
              ),
              child: const Center(
                child: Text(
                  'V',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
