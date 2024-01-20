import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';
import 'package:hades/widgets/custom_elevated_button.dart';
import 'package:hades/widgets/custom_outlined_button.dart';
import 'package:hades/widgets/custom_phone_number.dart';

class PhoneNumberScreen extends StatelessWidget {
  PhoneNumberScreen({Key? key})
      : super(
          key: key,
        );

  Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('62');

  TextEditingController phoneNumberController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 24.h,
                  vertical: 40.v,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 87.v),
                    Text(
                      "Your Phone Number",
                      style: theme.textTheme.headlineSmall,
                    ),
                    SizedBox(height: 18.v),
                    Container(
                      width: 278.h,
                      margin: EdgeInsets.symmetric(horizontal: 24.h),
                      child: Text(
                        "Enter your mobile number to register an account",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodyMedium!.copyWith(
                          height: 1.71,
                        ),
                      ),
                    ),
                    SizedBox(height: 29.v),
                    CustomPhoneNumber(
                      country: selectedCountry,
                      controller: phoneNumberController,
                      onTap: (Country value) {
                        selectedCountry = value;
                      },
                    ),
                    Spacer(),
                    CustomElevatedButton(
                      text: "Send Code",
                    ),
                    SizedBox(height: 16.v),
                    CustomOutlinedButton(
                      text: "Sign Up With Email",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
