import 'categories.dart';
import 'home_header.dart';
import '/size_config.dart';
import 'special_offers.dart';
import 'discount_banner.dart';
import 'popular_product.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(height: getProportionateScreenHeight(20)),
                // 1 - HomeHeader
                const HomeHeader(),
                SizedBox(height: getProportionateScreenHeight(10)),

                // 2 - DiscountBanner
                const DiscountBanner(),

                // 3 - Categories
                const Categories(),

                // 4 - SpecialOffers
                const SpecialOffers(),
                SizedBox(height: getProportionateScreenHeight(20)),

                // 5 - PopularProducts
                const PopularProducts(),
                SizedBox(height: getProportionateScreenHeight(20)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
