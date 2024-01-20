import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';
import 'package:hades/widgets/custom_elevated_button.dart';
import 'package:hades/widgets/custom_pin_code_text_field.dart';

class VerifyAccountScreen extends StatelessWidget {
  const VerifyAccountScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 24.h,
            top: 125.v,
            right: 24.h,
          ),
          child: Column(
            children: [
              Text(
                "Verify Account",
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 16.v),
              SizedBox(
                width: 217.h,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Enter 4 digit code we have sent\nto ",
                        style: CustomTextStyles.bodyMediumff999999.copyWith(
                          height: 1.71,
                        ),
                      ),
                      TextSpan(
                        text: "+6285788773880",
                        style: CustomTextStyles.titleSmallff333333,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 29.v),
              CustomPinCodeTextField(
                context: context,
                onChanged: (value) {},
              ),
              SizedBox(height: 37.v),
              Text(
                "Haven’t received verification code?",
                style: theme.textTheme.bodyMedium,
              ),
              SizedBox(height: 9.v),
              Text(
                "Resend Code",
                style: CustomTextStyles.titleMediumPrimary_2.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildVerifyNow(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildVerifyNow(BuildContext context) {
    return CustomElevatedButton(
      text: "Verify Now",
      margin: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 40.v,
      ),
    );
  }
}
