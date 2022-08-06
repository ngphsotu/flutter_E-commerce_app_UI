import 'profile_pic.dart';
import 'profile_menu.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          // ProfilePic - Profile picture
          const ProfilePic(),
          const SizedBox(height: 20),
          // ProfileMenu - Profile menu
          ProfileMenu(
            text: 'My account',
            icon: 'assets/icons/user_icon.svg',
            press: () {},
          ),
          ProfileMenu(
            text: 'Notifications',
            icon: 'assets/icons/bell.svg',
            press: () {},
          ),
          ProfileMenu(
            text: 'Settings',
            icon: 'assets/icons/settings.svg',
            press: () {},
          ),
          ProfileMenu(
            text: 'Help Center',
            icon: 'assets/icons/question_mark.svg',
            press: () {},
          ),
          ProfileMenu(
            text: 'Log out',
            icon: 'assets/icons/log_out.svg',
            press: () {},
          ),
        ],
      ),
    );
  }
}
