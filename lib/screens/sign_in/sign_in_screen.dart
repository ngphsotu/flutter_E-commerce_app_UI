import 'components/body.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  // routeName - sign in
  static String routeName = "/sign_in";

  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: const Body(),
    );
  }
}
