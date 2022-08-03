import '/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //
    List<Map<String, dynamic>> categories = [
      {'icon': 'assets/icons/Flash Icon.svg', 'text': 'Flash'},
      {'icon': 'assets/icons/Bill Icon.svg', 'text': 'Bill'},
      {'icon': 'assets/icons/Game Icon.svg', 'text': 'Game'},
      {'icon': 'assets/icons/Gift Icon.svg', 'text': 'Daily Gift'},
      {'icon': 'assets/icons/Discover.svg', 'text': 'More'},
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        categories.length,
        (index) => CategoryCard(
          icon: categories[index]['icon'],
          text: categories[index]['text˝'],
          press: () {},
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
    return Container(
      width: getProportionateScreenWidth(55),
      height: getProportionateScreenWidth(55),
      padding: EdgeInsets.all(getProportionateScreenWidth(15)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFFFFECDF),
      ),
      child: SvgPicture.asset(icon!),
    );
  }
}
