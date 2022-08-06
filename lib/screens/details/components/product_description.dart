import '/constants.dart';
import '/size_config.dart';
import '/models/Product.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

class ProductDescription extends StatelessWidget {
  //
  final Product product;
  final GestureTapCallback pressOnSeeMore;

  const ProductDescription({
    Key? key,
    required this.product,
    required this.pressOnSeeMore,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Text(
            product.title,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        //
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            width: getProportionateScreenWidth(64),
            padding: EdgeInsets.all(getProportionateScreenWidth(15)),
            decoration: BoxDecoration(
              color: product.isFavorite
                  ? const Color(0xFFFFE6E6)
                  : const Color(0xFFF5F6F9),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: SvgPicture.asset(
              'assets/icons/heart_icon_2.svg',
              color: product.isFavorite
                  ? const Color(0xFFFF4848)
                  : const Color(0xFFD8DEE4),
              height: getProportionateScreenWidth(16),
            ),
          ),
        ),
        //
        Padding(
          padding: EdgeInsets.only(
            left: getProportionateScreenHeight(20),
            right: getProportionateScreenWidth(64),
          ),
          child: Text(product.description, maxLines: 3),
        ),
        //
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: getProportionateScreenWidth(20),
          ),
          child: GestureDetector(
            onTap: () {},
            child: Row(
              children: const [
                Text(
                  'See More Details',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: kPrimaryColor,
                  ),
                ),
                SizedBox(width: 5),
                Icon(Icons.arrow_forward_ios, size: 12, color: kPrimaryColor),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
