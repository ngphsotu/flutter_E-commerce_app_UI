import '/size_config.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //
    List<Map<String, dynamic>> categories = [
      {'icon': 'assets/icons/flash_icon.svg', 'text': 'Deal'},
      {'icon': 'assets/icons/bill_icon.svg', 'text': 'Bill'},
      {'icon': 'assets/icons/game_icon.svg', 'text': 'Game'},
      {'icon': 'assets/icons/gift_icon.svg', 'text': 'Gift'},
      {'icon': 'assets/icons/discover.svg', 'text': 'More'},
    ];

    return Padding(
      padding: EdgeInsets.all(getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          categories.length,
          (index) => CategoryCard(
            icon: categories[index]['icon'],
            text: categories[index]['text'],
            press: () {},
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  //
  final String? icon, text;
  final GestureTapCallback press;

  const CategoryCard({
    Key? key,
    this.icon,
    this.text,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(55),
        child: Column(
          children: [
            Container(
              width: getProportionateScreenWidth(55),
              height: getProportionateScreenWidth(55),
              padding: EdgeInsets.all(getProportionateScreenWidth(15)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFFFFECDF),
              ),
              child: SvgPicture.asset(icon!),
            ),
            const SizedBox(height: 5),
            Text(text!, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
