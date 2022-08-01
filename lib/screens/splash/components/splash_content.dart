import '/constants.dart';
import '/size_config.dart';
import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  final String text, image;
  const SplashContent({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Text(
          'TOKYO',
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: getProportionateScreenWidth(36),
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(text, textAlign: TextAlign.center),
        const Spacer(
          flex: 2,
        ),
        Image.asset(
          image,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        ),
      ],
    );
  }
}
