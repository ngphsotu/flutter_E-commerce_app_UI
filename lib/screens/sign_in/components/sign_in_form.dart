import 'package:e_commerce_app/screens/login_success/login_success_screen.dart';

import '/constants.dart';
import '/size_config.dart';
import '/components/form_error.dart';
import 'package:flutter/material.dart';
import '/components/default_button.dart';
import '/components/custom_surffix_icon.dart';
import '../../forgot_password/forgot_password_screen.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  //
  final _formkey = GlobalKey<FormState>();
  final List<String> errors = [];
  String? email;
  String? password;
  bool? remember = false;

  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error!);
      });
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          // buildEmailFormField
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          // buildPasswordFormField
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          // Row
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    remember = value;
                  });
                },
              ),
              const Text('Remember me'),
              const Spacer(),
              GestureDetector(
                onTap: () => Navigator.popAndPushNamed(
                    context, ForgotPasswordScreen.routeName),
                child: const Text('Forgot password',
                    style: TextStyle(decoration: TextDecoration.underline)),
              ),
            ],
          ),
          // FormError
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20)),
          // DefaultButton
          DefaultButton(
            text: 'Continue',
            press: () {
              if (_formkey.currentState!.validate()) {
                _formkey.currentState!.save();
                // Go to login success page
                Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  // buildPasswordFormField
  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: 'Password',
        hintText: 'Enter your password',
        suffixIcon: CustomSurffixIcon(svgIcon: 'assets/icons/Lock.svg'),
      ),
    );
  }

  // buildEmailFormField
  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: 'Email',
        hintText: 'Enter your email',
        suffixIcon: CustomSurffixIcon(svgIcon: 'assets/icons/Mail.svg'),
      ),
    );
  }
}
