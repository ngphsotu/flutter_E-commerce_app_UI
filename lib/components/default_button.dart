import '/constants.dart';
import '/size_config.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  //
  final String? text;
  final Function? press;

  const DefaultButton({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: TextButton(
        style: TextButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          primary: Colors.white,
          backgroundColor: kPrimaryColor,
        ),
        onPressed: press as void Function()?,
        child: Text(
          text!,
          style: TextStyle(
            color: Colors.white,
            fontSize: getProportionateScreenWidth(18),
          ),
        ),
      ),
    );
  }
}
