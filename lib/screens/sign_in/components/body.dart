import '/constants.dart';
import '/size_config.dart';
import 'sign_in_form.dart';
import '/components/socal_card.dart';
import 'package:flutter/material.dart';
import '/components/no_account_text.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                    height:
                        SizeConfig.screenHeight * 0.02), // 2% of total height
                Text('Welcome Back', style: headingStyle),
                SizedBox(
                    height: SizeConfig.screenHeight *
                        0.005), // 0.5% of total height
                const Text(
                  'Sign in with your email and password \nor continue with social media',
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                    height:
                        SizeConfig.screenHeight * 0.08), // 8% of total height
                // SignInForm - Sign In Form
                const SignInForm(),
                SizedBox(
                    height:
                        SizeConfig.screenHeight * 0.08), // 8% of total height
                // Row - Google - Facebook - Twitter
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocalCard(
                      icon: 'assets/icons/google-icon.svg',
                      press: () {},
                    ),
                    SocalCard(
                      icon: 'assets/icons/facebook-2.svg',
                      press: () {},
                    ),
                    SocalCard(
                      icon: 'assets/icons/twitter.svg',
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                // NoAccountText - Don't have an account? - Sign up
                const NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
