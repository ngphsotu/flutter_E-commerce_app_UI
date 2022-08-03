import '/enums.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  // selectedMenu
  final MenuState selectedMenu;

  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //
    final Color inActiveIconColor = Color(0xFFB6B6B6);

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
          color: Colors.white, boxShadow: [BoxShadow(offset: Offset(0, -15))]),
    );
  }
}
