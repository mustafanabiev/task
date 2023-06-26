import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/constants/constants.dart';
import 'package:task/modules/modules.dart';
import 'package:task/theme/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainCubit(),
      child: const MainScreen([
        HomePage(),
        CallsPage(),
        MessagesPage(),
        ContactsPage(),
      ]),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen(this.items, {super.key});

  final List<Widget> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: items[context.watch<MainCubit>().state],
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: ClipRRect(
        child: BottomNavigationBar(
          backgroundColor: AppColors.backgroundColor,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.home_outlined),
              icon: Icon(Icons.home_outlined),
              label: AppText.home,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call_outlined),
              label: AppText.calls,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.email_outlined),
              label: AppText.messages,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: AppText.contacts,
            ),
          ],
          unselectedItemColor: AppColors.blackGrey,
          selectedItemColor: AppColors.blackBlue,
          currentIndex: context.watch<MainCubit>().state,
          onTap: context.read<MainCubit>().change,
        ),
      ),
    );
  }
}
