import '/constants.dart';
import '/size_config.dart';
import '/models/Product.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  //
  final double width, aspectRatio;
  final Product product;
  final GestureTapCallback press;

  const ProductCard({
    Key? key,
    this.width = 140,
    this.aspectRatio = 1.02,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(width),
        child: GestureDetector(
          onTap: press,
          //onTap: () => Navigator.pushNamed(context, DetailsScreen.routeName, arguments: )
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: aspectRatio,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Hero(
                    tag: product.id.toString(),
                    child: Image.asset(
                      product.images[0],
                    ),
                  ),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(5)),
              SizedBox(
                height: getProportionateScreenHeight(35),
                child: Text(
                  product.title,
                  style: const TextStyle(color: Colors.black),
                  maxLines: 2,
                ),
              ),
              //const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${product.price}',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: getProportionateScreenWidth(18),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: getProportionateScreenWidth(28),
                      height: getProportionateScreenWidth(28),
                      padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                      decoration: BoxDecoration(
                        color: product.isFavorite
                            ? kPrimaryColor.withOpacity(0.15)
                            : kSecondaryColor.withOpacity(0.1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/heart_icon_2.svg',
                        color: product.isFavorite
                            ? const Color(0xFFFF4848)
                            : const Color(0xFFDBDEE4),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
