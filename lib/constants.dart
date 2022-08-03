import 'size_config.dart';
import 'package:flutter/material.dart';

const kTextColor = Color(0xFF757575);
const kPrimaryColor = Color(0xFFFF7643);
const kSecondaryColor = Color(0xFF979797);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kAnimationDuration = Duration(milliseconds: 200);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);

// headingStyle
final headingStyle = TextStyle(
  color: Colors.black,
  height: 1.5,
  fontSize: getProportionateScreenWidth(20),
  fontWeight: FontWeight.bold,
);

// const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

const String kEmailNullError = "Please enter your email";
const String kInvalidEmailError = "Please enter valid email";

const String kPassNullError = "Please enter your password";
const String kConfPassNullError = "Please confirm your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";

const String klastNamelNullError = "Please enter your last name";
const String kfirstNamelNullError = "Please enter your first name";
const String kPhoneNumberNullError = "Please enter your phone number";
const String kAddressNullError = "Please enter your address";

final otpInputDecoration = InputDecoration(
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderSide: const BorderSide(color: kTextColor),
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
  );
}
