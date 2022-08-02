import '/constants.dart';
import '/size_config.dart';
import '/components/form_error.dart';
import '/components/default_button.dart';
import 'package:flutter/material.dart';
import '/components/custom_surffix_icon.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({Key? key}) : super(key: key);

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  //
  final _formkey = GlobalKey<FormState>();
  final List<String> errors = [];
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? address;

  // addError
  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error!);
      });
    }
  }

  // removeError
  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          // buildFirstNameFormField - First Name
          buildFirstNameFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          // buildLastNameFormField - Last Name
          buildLastNameFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          // buildPhoneNumberFormField - Phone Number
          buildPhoneNumberFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          // buildAddressFormField - Address
          buildAddressFormField(),
          // FormError - Show Error
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          // DefaultButton - Button
          DefaultButton(
            text: 'Continue',
            press: () {
              if (_formkey.currentState!.validate()) {
                // Go to ... page
              }
            },
          ),
        ],
      ),
    );
  }

  // buildAddressFormField - Address
  TextFormField buildAddressFormField() {
    return TextFormField(
      onSaved: (newValue) => address = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kAddressNullError);
        }
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kAddressNullError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: 'Address',
        hintText: 'Enter your address',
        suffixIcon:
            CustomSurffixIcon(svgIcon: 'assets/icons/Location point.svg'),
      ),
    );
  }

  // buildPhoneNumberFormField - Phone Number
  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      onSaved: (newValue) => phoneNumber = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPhoneNumberNullError);
        }
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPhoneNumberNullError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: 'Phone Number',
        hintText: 'Enter your phone number',
        suffixIcon: CustomSurffixIcon(svgIcon: 'assets/icons/Phone.svg'),
      ),
    );
  }

  // buildfirstNameFormField - Last Name
  TextFormField buildLastNameFormField() {
    return TextFormField(
      onSaved: (newValue) => lastName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: klastNamelNullError);
        }
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: klastNamelNullError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: 'Last Name',
        hintText: 'Enter your last name',
        suffixIcon: CustomSurffixIcon(svgIcon: 'assets/icons/User.svg'),
      ),
    );
  }

  // buildfirstNameFormField - First Name
  TextFormField buildFirstNameFormField() {
    return TextFormField(
      onSaved: (newValue) => firstName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kfirstNamelNullError);
        }
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kfirstNamelNullError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: 'First Name',
        hintText: 'Enter your first name',
        suffixIcon: CustomSurffixIcon(svgIcon: 'assets/icons/User.svg'),
      ),
    );
  }
}
