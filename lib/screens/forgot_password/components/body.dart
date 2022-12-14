import '/constants.dart';
import '/size_config.dart';
import '/components/form_error.dart';
import 'package:flutter/material.dart';
import '/components/default_button.dart';
import '/components/no_account_text.dart';
import '/components/custom_surffix_icon.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(
                  height: SizeConfig.screenHeight * 0.04), // 4% of total height
              Text(
                'Forgot Password',
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(28),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Please enter your email and we will send \nyou a link to return to your account',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                  height: SizeConfig.screenHeight * 0.1), // 1% of total height
              // ForgotPassForm - Forgot Password Form
              const ForgotPassForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  const ForgotPassForm({Key? key}) : super(key: key);

  @override
  State<ForgotPassForm> createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  //
  String? email;
  List<String> errors = [];
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          // Email Form Field
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) => email = newValue,
            onChanged: (value) {
              if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                setState(() {
                  errors.remove(kEmailNullError);
                });
              } else if (emailValidatorRegExp.hasMatch(value) &&
                  errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.remove(kInvalidEmailError);
                });
              }
            },
            validator: (value) {
              if (value!.isEmpty && !errors.contains(kEmailNullError)) {
                setState(() {
                  errors.add(kEmailNullError);
                });
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  !errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.add(kInvalidEmailError);
                });
              }
              return null;
            },
            decoration: const InputDecoration(
              labelText: 'Email',
              hintText: 'Enter your email',
              suffixIcon:
                  CustomSurffixIcon(svgIcon: 'assets/icons/mail_icon.svg'),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(30)),
          // FormError - Show errors
          FormError(errors: errors),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          // DefaultButton - Button
          DefaultButton(
            text: 'Continue',
            press: () {
              if (_formkey.currentState!.validate()) {
                // Go to ... page
                // Navigator.pushNamed(context, ...routeName);
              }
            },
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          // NoAccountText - Don't have an account? - Sign up
          const NoAccountText(),
        ],
      ),
    );
  }
}
