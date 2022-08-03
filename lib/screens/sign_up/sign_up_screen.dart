import 'components/body.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  // routeName - sign up
  static String routeName = '/sign_up';

  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: const Body(),
    );
  }
}
