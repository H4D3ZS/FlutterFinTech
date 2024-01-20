import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';
import 'package:hades/widgets/custom_elevated_button.dart';

class AccountCreatedScreen extends StatelessWidget {
  const AccountCreatedScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 37.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 85.v),
              Text(
                "Account Created",
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 18.v),
              Container(
                width: 313.h,
                margin: EdgeInsets.only(
                  left: 5.h,
                  right: 7.h,
                ),
                child: Text(
                  "Your account has been created successfully.\nPress continue to continue using the app",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    height: 1.71,
                  ),
                ),
              ),
              SizedBox(height: 82.v),
              CustomImageView(
                imagePath: ImageConstant.imgAccountCreated,
                height: 217.adaptSize,
                width: 217.adaptSize,
              ),
              SizedBox(height: 86.v),
              CustomElevatedButton(
                text: "Continue",
              ),
              SizedBox(height: 18.v),
              SizedBox(
                width: 222.h,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "By clicking continue, you agree to our\n",
                        style: theme.textTheme.bodySmall,
                      ),
                      TextSpan(
                        text: "Terms and Conditions",
                        style: CustomTextStyles.labelLargeff333333.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      TextSpan(
                        text: " ",
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
