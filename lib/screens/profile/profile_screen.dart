import '/enums.dart';
import 'components/body.dart';
import 'package:flutter/material.dart';
import '/components/custom_bottom_nav_bar.dart';

class ProfileScreen extends StatelessWidget {
  // routeName - Profile
  static String routeName = '/Profile';

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: const Body(),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
