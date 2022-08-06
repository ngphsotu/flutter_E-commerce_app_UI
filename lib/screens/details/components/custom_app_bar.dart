import '/constants.dart';
import '/size_config.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  //
  final double rating;

  const CustomAppBar({Key? key, required this.rating}) : super(key: key);

  // AppBar().preferredSize.height provide the height that appy on app bar
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Row(
          children: [
            SizedBox(
              height: getProportionateScreenWidth(40),
              width: getProportionateScreenWidth(40),
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                  primary: kPrimaryColor,
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.zero,
                ),
                onPressed: () => Navigator.pop(context),
                child:
                    SvgPicture.asset("assets/icons/back_icon.svg", height: 15),
              ),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [
                  Text(
                    "$rating",
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 5),
                  SvgPicture.asset("assets/icons/star_icon.svg"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// return SafeArea(
    //   child: Padding(
    //     padding:
    //         EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
    //     child: Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children: [
    //         RoundedIconBtn(
    //           iconData: Icons.arrow_back_ios,
    //           press: () => Navigator.pop(context),
    //         ),
    //         Container(
    //           padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
    //           decoration: BoxDecoration(
    //               color: Colors.white, borderRadius: BorderRadius.circular(14)),
    //           child: Row(
    //             children: [
    //               Text(
    //                 rating.toString(),
    //                 style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w600),
    //               ),
    //               const SizedBox(width: 5),
    //               SvgPicture.asset('assets/icons/star_icon.svg')
    //             ],
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );