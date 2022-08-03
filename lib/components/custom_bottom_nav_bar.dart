import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/screens/home/home_screen.dart';
import 'package:flutter_svg/svg.dart';

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
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () =>
                  Navigator.pushNamed(context, HomeScreen.routeName),
              icon: SvgPicture.asset(
                'assets/icons/shop_icon.svg',
                color: MenuState.home == selectedMenu
                    ? kPrimaryColor
                    : inActiveIconColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/heart_icon.svg'),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/heart_icon.svg'),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/heart_icon.svg'),
            ),
          ],
        ),
      ),
    );
  }
}
