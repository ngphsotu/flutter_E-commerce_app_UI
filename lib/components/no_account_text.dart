import '/constants.dart';
import '/size_config.dart';
import 'package:flutter/material.dart';
import '/screens/sign_up/sign_up_screen.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have an account?',
          style: TextStyle(fontSize: getProportionateScreenWidth(16)),
        ),
        SizedBox(width: SizeConfig.screenWidth * 0.01), // 1% of total width
        GestureDetector(
          // Go to Sign Up page
          onTap: () => Navigator.pushNamed(context, SignUpScreen.routeName),
          child: Text(
            'Sign Up',
            style: TextStyle(
              color: kPrimaryColor,
              fontSize: getProportionateScreenWidth(16),
            ),
          ),
        ),
      ],
    );
  }
}
