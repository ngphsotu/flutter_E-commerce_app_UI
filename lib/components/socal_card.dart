import '/size_config.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

class SocalCard extends StatelessWidget {
  //
  final String? icon;
  final Function? press;

  const SocalCard({Key? key, this.icon, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press as void Function(),
      child: Container(
        width: getProportionateScreenWidth(40),
        height: getProportionateScreenHeight(40),
        padding: EdgeInsets.all(getProportionateScreenWidth(12)),
        margin:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        decoration: const BoxDecoration(
            shape: BoxShape.circle, color: Color(0xFFF5F6F9)),
        child: SvgPicture.asset(icon!),
      ),
    );
  }
}
