import '/size_config.dart';
import 'package:flutter/material.dart';
import '/screens/splash/components/body.dart';

class SplashScreen extends StatelessWidget {
  //
  static String routeName = '/splash';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}
