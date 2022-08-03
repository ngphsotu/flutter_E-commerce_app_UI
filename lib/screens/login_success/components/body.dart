import '/size_config.dart';
import 'package:flutter/material.dart';
import '/screens/home/home_screen.dart';
import '/components/default_button.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04), // 4% of total height
        // Image
        Image.asset(
          'assets/images/success.png',
          height: SizeConfig.screenHeight * 0.4, // 40% of total height
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.08), // 8% of total height
        Text(
          'Login Success',
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const Spacer(),
        // Button
        SizedBox(
          width: SizeConfig.screenWidth * 0.6, // 6% of total width
          child: DefaultButton(
            text: 'Back to home',
            // Go to home page
            press: () => Navigator.pushNamed(context, HomeScreen.routeName),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
