// ignore_for_file: non_constant_identifier_names

import '/constants.dart';
import '/size_config.dart';
import 'package:flutter/material.dart';
import '/components/form_error.dart';
import '/components/default_button.dart';
import '/components/custom_surffix_icon.dart';
import '/screens/complete_profile/complete_profile_screen.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  //
  bool remember = false;
  String? email;
  String? password;
  String? confirm_password;
  final List<String> errors = [];
  final _formkey = GlobalKey<FormState>();

  // addError
  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error!);
      });
    }
  }

  // removeError
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
          // buildEmailFormField - Email Form Field
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          // buildPasswordFormField - Password Form Field
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          // buildConfirmPassFormField - Confirm Password Form Field
          buildConfirmPassFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          // FormError - Show errors
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          // DefaultButton - Button
          DefaultButton(
            text: 'Continue',
            press: () {
              if (_formkey.currentState!.validate()) {
                _formkey.currentState!.save();
                // Go to compelete profile page
                Navigator.pushNamed(context, CompeleteProfileScreen.routeName);
              }
            },
          )
        ],
      ),
    );
  }

  // buildConfirmPassFormField - Confirm Password Form Field
  TextFormField buildConfirmPassFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => confirm_password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kConfPassNullError);
        } else if (value.isNotEmpty && password == confirm_password) {
          removeError(error: kMatchPassError);
        }
        confirm_password = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kConfPassNullError);
          return "";
        } else if (password != value) {
          addError(error: kMatchPassError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: 'Confirm Password',
        hintText: 'Re-Enter your password',
        suffixIcon: CustomSurffixIcon(svgIcon: 'assets/icons/lock.svg'),
      ),
    );
  }

  // buildPasswordFormField - Password Form Field
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
        password = value;
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
        suffixIcon: CustomSurffixIcon(svgIcon: 'assets/icons/lock.svg'),
      ),
    );
  }

  // buildEmailFormField - Email Form Field
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
        suffixIcon: CustomSurffixIcon(svgIcon: 'assets/icons/mail_icon.svg'),
      ),
    );
  }
}
