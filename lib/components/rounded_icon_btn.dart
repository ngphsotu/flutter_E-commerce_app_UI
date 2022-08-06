import '/constants.dart';
import '/size_config.dart';
import 'package:flutter/material.dart';

class RoundedIconBtn extends StatelessWidget {
  //
  final GestureTapCallback press;
  final IconData iconData;
  final bool showShadow;

  const RoundedIconBtn({
    Key? key,
    this.showShadow = false,
    required this.press,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(40),
      height: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          if (showShadow)
            BoxShadow(
              color: const Color(0xFFB0B0B0).withOpacity(0.2),
              offset: const Offset(0, 6),
              blurRadius: 10,
            ),
        ],
      ),
      child: TextButton(
        onPressed: press,
        style: TextButton.styleFrom(
          primary: kPrimaryColor,
          padding: EdgeInsets.zero,
          backgroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        ),
        child: Icon(iconData),
      ),
    );
  }
}
