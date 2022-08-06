import '/size_config.dart';
import 'section_title.dart';
import '/models/Product.dart';
import '/components/product_card.dart';
import 'package:flutter/material.dart';
import '/screens/details/details_screen.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(
            title: 'Popular Products',
            press: () {},
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...List.generate(demoProducts.length, (index) {
                if (demoProducts[index].isPopular) {
                  return ProductCard(
                    product: demoProducts[index],
                    press: () => Navigator.pushNamed(
                      context,
                      DetailsScreen.routeName,
                      arguments:
                          ProductDetailsArgument(product: demoProducts[index]),
                    ),
                  );
                }
                return const SizedBox.shrink(); // default width & height is 0
              }),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}
