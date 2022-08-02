import '/size_config.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

class FormError extends StatelessWidget {
  //
  final List<String> errors;

  const FormError({Key? key, required this.errors}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        errors.length,
        (index) => formErrorText(
          error: errors[index],
        ),
      ),
    );
  }

  Row formErrorText({required String error}) {
    return Row(
      children: [
        SvgPicture.asset('assets/icons/Error.svg'),
        SizedBox(
          height: getProportionateScreenWidth(14),
          width: getProportionateScreenWidth(14),
        ),
        Text(error),
      ],
    );
  }
}
