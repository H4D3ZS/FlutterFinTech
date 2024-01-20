import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';
import 'package:hades/widgets/app_bar/appbar_leading_image.dart';
import 'package:hades/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:hades/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hades/widgets/app_bar/custom_app_bar.dart';
import 'package:hades/widgets/custom_elevated_button.dart';
import 'package:hades/widgets/custom_text_form_field.dart';

class PasswordScreen extends StatelessWidget {
  PasswordScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController passwordController = TextEditingController();

  TextEditingController newpasswordController = TextEditingController();

  TextEditingController newpasswordController1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 38.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Opacity(
                opacity: 0.5,
                child: Text(
                  "Enter your old password",
                  style: CustomTextStyles.bodySmallBlack90087,
                ),
              ),
              SizedBox(height: 14.v),
              _buildPassword(context),
              SizedBox(height: 25.v),
              Opacity(
                opacity: 0.5,
                child: Text(
                  "Enter your new password",
                  style: CustomTextStyles.bodySmallBlack90087,
                ),
              ),
              SizedBox(height: 14.v),
              _buildNewpassword(context),
              SizedBox(height: 25.v),
              Opacity(
                opacity: 0.5,
                child: Text(
                  "Re-password new password",
                  style: CustomTextStyles.bodySmallBlack90087,
                ),
              ),
              SizedBox(height: 14.v),
              _buildNewpassword1(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildSavePassword(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 44.v,
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.img46Onprimarycontainer,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 10.v,
          bottom: 10.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleTwo(
        text: "Password",
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFrame2Onprimarycontainer,
          margin: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 10.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
      controller: passwordController,
      suffix: Container(
        margin: EdgeInsets.all(16.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgEyeoff,
          height: 16.adaptSize,
          width: 16.adaptSize,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 48.v,
      ),
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildNewpassword(BuildContext context) {
    return Opacity(
      opacity: 0.2,
      child: CustomTextFormField(
        controller: newpasswordController,
        obscureText: true,
      ),
    );
  }

  /// Section Widget
  Widget _buildNewpassword1(BuildContext context) {
    return Opacity(
      opacity: 0.2,
      child: CustomTextFormField(
        controller: newpasswordController1,
        textInputAction: TextInputAction.done,
        obscureText: true,
      ),
    );
  }

  /// Section Widget
  Widget _buildSavePassword(BuildContext context) {
    return CustomElevatedButton(
      text: "Save Password",
      margin: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 40.v,
      ),
    );
  }
}
