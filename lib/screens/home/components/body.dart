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
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(0)),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(20)),
                    child: Column(
                      children: [
                        SizedBox(height: getProportionateScreenHeight(20)),
                        // HomeHeader
                        const HomeHeader(),
                        SizedBox(height: getProportionateScreenHeight(15)),
                        // DiscountBanner
                        const DiscountBanner(),
                        // Categories
                        const Categories(),
                        SizedBox(height: getProportionateScreenHeight(20)),
                        // SpecialOffers
                        const SpecialOffers(),
                        SizedBox(height: getProportionateScreenHeight(20)),
                      ],
                    ),
                  ),
                  // PopularProducts
                  const PopularProducts(),
                  SizedBox(height: getProportionateScreenHeight(30)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
