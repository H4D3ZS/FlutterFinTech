import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';
import 'package:hades/widgets/custom_checkbox_button.dart';
import 'package:hades/widgets/custom_elevated_button.dart';
import 'package:hades/widgets/custom_outlined_button.dart';
import 'package:hades/widgets/custom_text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool iHaveAgreedToOurTermsAndCondit = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 22.h,
            vertical: 38.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 84.v),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Welcome !",
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 40.v),
              Opacity(
                opacity: 0.5,
                child: Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text(
                    "Full Name",
                    style: CustomTextStyles.bodySmallBlack90087,
                  ),
                ),
              ),
              SizedBox(height: 12.v),
              _buildFullName(context),
              SizedBox(height: 23.v),
              Opacity(
                opacity: 0.5,
                child: Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text(
                    "Email Address",
                    style: CustomTextStyles.bodySmallBlack90087,
                  ),
                ),
              ),
              SizedBox(height: 12.v),
              _buildEmail(context),
              SizedBox(height: 23.v),
              Opacity(
                opacity: 0.5,
                child: Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text(
                    "Password",
                    style: CustomTextStyles.bodySmallBlack90087,
                  ),
                ),
              ),
              SizedBox(height: 12.v),
              _buildPassword(context),
              SizedBox(height: 24.v),
              _buildIHaveAgreedToOurTermsAndCondit(context),
              SizedBox(height: 40.v),
              _buildButton(context),
              SizedBox(height: 16.v),
              Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account ?",
                      style: CustomTextStyles.bodySmallPrimary_1,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "Sign In",
                        style: CustomTextStyles.labelLargePrimary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFullName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: CustomTextFormField(
        controller: fullNameController,
        hintText: "Alexander Michael",
        hintStyle: CustomTextStyles.bodyMediumOnPrimaryContainer,
        borderDecoration: TextFormFieldStyleHelper.outlineGray,
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: CustomTextFormField(
        controller: emailController,
        borderDecoration: TextFormFieldStyleHelper.fillGray,
        filled: true,
        fillColor: appTheme.gray100,
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: CustomTextFormField(
        controller: passwordController,
        textInputAction: TextInputAction.done,
        suffix: Container(
          margin: EdgeInsets.fromLTRB(30.h, 12.v, 16.h, 12.v),
          child: CustomImageView(
            imagePath: ImageConstant.img15,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 48.v,
        ),
        obscureText: true,
        borderDecoration: TextFormFieldStyleHelper.fillGray,
        filled: true,
        fillColor: appTheme.gray100,
      ),
    );
  }

  /// Section Widget
  Widget _buildIHaveAgreedToOurTermsAndCondit(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 61.h),
      child: CustomCheckboxButton(
        text: "I have agree to our Terms and Condition",
        value: iHaveAgreedToOurTermsAndCondit,
        padding: EdgeInsets.symmetric(vertical: 1.v),
        onChange: (value) {
          iHaveAgreedToOurTermsAndCondit = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(
      text: "Sign Up",
    );
  }

  /// Section Widget
  Widget _buildWithPhoneNumber(BuildContext context) {
    return CustomOutlinedButton(
      text: "With Phone Number",
    );
  }

  /// Section Widget
  Widget _buildButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: Column(
        children: [
          _buildSignUp(context),
          SizedBox(height: 16.v),
          _buildWithPhoneNumber(context),
        ],
      ),
    );
  }
}
