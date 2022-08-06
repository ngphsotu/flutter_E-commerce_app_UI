import '../../cart/cart_screen.dart';
import 'color_dots.dart';
import '/size_config.dart';
import 'product_image.dart';
import '/models/Product.dart';
import 'product_description.dart';
import 'top_rounded_container.dart';
import 'package:flutter/material.dart';
import '/components/default_button.dart';

class Body extends StatelessWidget {
  //
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // ProductImages - Image of Products
        ProductImages(product: product),
        // Description of product
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(
                product: product,
                pressOnSeeMore: () {},
              ),
              //
              TopRoundedContainer(
                color: const Color(0xFFF6F7F9),
                child: Column(
                  children: [
                    // ColorDots
                    ColorDots(product: product),
                    // Button 'Add To Cart'
                    TopRoundedContainer(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: getProportionateScreenWidth(15),
                          left: SizeConfig.screenWidth * 0.15,
                          right: SizeConfig.screenWidth * 0.15,
                          bottom: getProportionateScreenWidth(40),
                        ),
                        child: DefaultButton(
                          text: 'Add To Cart',
                          // Go to CartScreen
                          press: () => Navigator.pushNamed(
                              context, CartScreen.routeName),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
