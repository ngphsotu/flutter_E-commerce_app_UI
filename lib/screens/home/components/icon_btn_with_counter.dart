import '/constants.dart';
import '/size_config.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

class IconBtnWithCounter extends StatelessWidget {
  //
  final int? numOfItems;
  final String svgSrc;
  final GestureTapCallback press;

  const IconBtnWithCounter({
    Key? key,
    this.numOfItems = 0,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(100),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: getProportionateScreenWidth(46),
            height: getProportionateScreenWidth(46),
            padding: EdgeInsets.all(getProportionateScreenWidth(12)),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kSecondaryColor.withOpacity(0.1),
            ),
            child: SvgPicture.asset(svgSrc),
          ),
          if (numOfItems != 0)
            Positioned(
              top: -3,
              right: 0,
              child: Container(
                width: getProportionateScreenWidth(16),
                height: getProportionateScreenWidth(16),
                decoration: BoxDecoration(
                  color: const Color(0xFFFF4848),
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5, color: Colors.white),
                ),
                child: Center(
                  child: Text(
                    '$numOfItems',
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(10),
                      height: 1,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
