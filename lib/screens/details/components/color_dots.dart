import '/constants.dart';
import '/size_config.dart';
import '/models/Product.dart';
import 'package:flutter/material.dart';
import '/components/rounded_icon_btn.dart';

class ColorDots extends StatelessWidget {
  //
  final Product product;

  const ColorDots({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // fixed and only for demo
    int selectedColor = 3;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Row(
        children: [
          ...List.generate(
            product.colors.length,
            (index) => ColorDot(
              color: product.colors[index],
              isSelected: index == selectedColor,
            ),
          ),
          const Spacer(),
          RoundedIconBtn(press: () {}, iconData: Icons.remove),
          SizedBox(width: getProportionateScreenWidth(20)),
          RoundedIconBtn(press: () {}, iconData: Icons.add, showShadow: true),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  //
  final Color color;
  final bool isSelected;

  const ColorDot({
    Key? key,
    required this.color,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(40),
      height: getProportionateScreenWidth(40),
      margin: const EdgeInsets.only(right: 2),
      padding: EdgeInsets.all(getProportionateScreenWidth(8)),
      decoration: BoxDecoration(
        color: Colors.transparent,
        shape: BoxShape.circle,
        border:
            Border.all(color: isSelected ? kPrimaryColor : Colors.transparent),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
