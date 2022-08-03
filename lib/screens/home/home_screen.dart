import 'package:e_commerce_app/components/custom_bottom_nav_bar.dart';
import 'package:e_commerce_app/enums.dart';

import 'components/body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  // routeName - home
  static String routeName = '/home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
      //bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
