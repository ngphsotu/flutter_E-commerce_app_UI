import 'package:e_commerce_app/size_config.dart';

import 'search_field.dart';
import 'icon_btn_with_counter.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SearchField(),
          Flexible(
            flex: 1,
            child: IconBtnWithCounter(
              svgSrc: 'assets/icons/Cart Icon.svg',
              // Go to CartScreen
              //press: ()=> Navigator.pushNamed(context, routeName),
              press: () {},
            ),
          ),
          Flexible(
            flex: 1,
            child: IconBtnWithCounter(
              numOfitem: 3,
              svgSrc: 'assets/icons/Bell.svg',
              press: () {},
            ),
          ),
        ],
      ),
    );
  }
}
