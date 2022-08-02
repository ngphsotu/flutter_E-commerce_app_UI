import 'components/body.dart';
import 'package:flutter/material.dart';

class CompeleteProfileScreen extends StatelessWidget {
  const CompeleteProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Body(),
    );
  }
}
