import 'constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// theme
ThemeData theme() {
  return ThemeData(
    textTheme: textTheme(),
    fontFamily: "Muli",
    appBarTheme: appBarTheme(),
    primarySwatch: Colors.green,
    inputDecorationTheme: inputDecorationTheme(),
    scaffoldBackgroundColor: Colors.white,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

// inputDecorationTheme
InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    gapPadding: 10,
    borderSide: const BorderSide(color: kTextColor),
    borderRadius: BorderRadius.circular(28),
  );
  return InputDecorationTheme(
    border: outlineInputBorder,
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: const EdgeInsets.symmetric(
      horizontal: 42,
      vertical: 20,
    ),
  );
}

// textTheme
TextTheme textTheme() {
  return const TextTheme(
    bodyText1: TextStyle(color: kTextColor),
    bodyText2: TextStyle(color: kTextColor),
  );
}

// appBarTheme
AppBarTheme appBarTheme() {
  return const AppBarTheme(
    color: Colors.white,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.black),
    titleTextStyle:
        TextStyle(color: Color(0XFF8B8B8B), fontSize: 18), //textTheme
    systemOverlayStyle: SystemUiOverlayStyle.dark, //brightness
  );
}
