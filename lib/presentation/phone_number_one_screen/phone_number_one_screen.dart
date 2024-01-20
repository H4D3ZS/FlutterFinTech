import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';
import 'package:hades/widgets/custom_elevated_button.dart';
import 'package:hades/widgets/custom_outlined_button.dart';
import 'package:hades/widgets/custom_phone_number.dart';

class PhoneNumberOneScreen extends StatelessWidget {
  PhoneNumberOneScreen({Key? key})
      : super(
          key: key,
        );

  Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('62');

  TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 24.h,
            top: 127.v,
            right: 24.h,
          ),
          child: Column(
            children: [
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
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 40.v,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomElevatedButton(
            text: "Send Code",
          ),
          CustomOutlinedButton(
            text: "Sign Up With Email",
            margin: EdgeInsets.only(top: 16.v),
          ),
        ],
      ),
    );
  }
}
