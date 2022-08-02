import '/constants.dart';
import '/size_config.dart';
import 'complete_profile_form.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                  height: SizeConfig.screenHeight * 0.03), // 3% of total height
              Text(
                'Complete Profile',
                style: headingStyle,
              ),
              const Text(
                'Complete your details or continue \nwith social media',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                  height: SizeConfig.screenHeight * 0.06), // 6% of total height
              const CompleteProfileForm(),
              SizedBox(height: getProportionateScreenHeight(30)),
              Text(
                'By continuing your confirm that you agree \nwith our Term and Condition',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.caption,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
