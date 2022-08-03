import '/size_config.dart';
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  //
  final String title;
  final GestureTapCallback press;

  const SectionTitle({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: getProportionateScreenWidth(18),
          ),
        ),
        const Text('See More', style: TextStyle(color: Color(0xFFBBBBBB))),
      ],
    );
  }
}
