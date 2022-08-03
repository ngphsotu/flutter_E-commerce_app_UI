import '/constants.dart';
import '/size_config.dart';
import 'package:flutter/material.dart';
import '/components/default_button.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({Key? key}) : super(key: key);

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  // Pin 2, 3, 4
  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode!.dispose();
    pin3FocusNode!.dispose();
    pin4FocusNode!.dispose();
  }

  // nextField
  void nextField(String value, FocusNode? focusNode) {
    if (value.length == 1) {
      focusNode!.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Pin 1
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  style: const TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  autofocus: true,
                  obscureText: true,
                  decoration: otpInputDecoration,
                  keyboardType: TextInputType.number,
                  onChanged: (value) => nextField(value, pin2FocusNode),
                ),
              ),
              // pin2FocusNode - Pin 2
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin2FocusNode,
                  style: const TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  autofocus: true,
                  obscureText: true,
                  decoration: otpInputDecoration,
                  keyboardType: TextInputType.number,
                  onChanged: (value) => nextField(value, pin3FocusNode),
                ),
              ),
              // pin3FocusNode - Pin 3
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin3FocusNode,
                  style: const TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  autofocus: true,
                  obscureText: true,
                  decoration: otpInputDecoration,
                  keyboardType: TextInputType.number,
                  onChanged: (value) => nextField(value, pin4FocusNode),
                ),
              ),
              // pin4FocusNode - Pin 4
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin4FocusNode,
                  style: const TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  autofocus: true,
                  obscureText: true,
                  decoration: otpInputDecoration,
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    if (value.length == 1) {
                      pin4FocusNode!
                          .unfocus(); // Need check is the code is correct or not
                    }
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.15),
          // DefaultButton - Button
          DefaultButton(
            text: 'Continue',
            press: () {},
          ),
        ],
      ),
    );
  }
}
