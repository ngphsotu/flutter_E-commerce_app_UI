import '/size_config.dart';
import 'components/body.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  // routeName - splash
  static String routeName = '/splash';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}
