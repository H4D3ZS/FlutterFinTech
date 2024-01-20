import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';
import 'package:hades/widgets/app_bar/appbar_leading_image.dart';
import 'package:hades/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:hades/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hades/widgets/app_bar/custom_app_bar.dart';
import 'package:hades/widgets/custom_elevated_button.dart';
import 'package:hades/widgets/custom_text_form_field.dart';

class EmailAddressOneScreen extends StatelessWidget {
  EmailAddressOneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController emailController1 = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
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
                  vertical: 11.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Opacity(
                      opacity: 0.5,
                      child: Text(
                        "Current email",
                        style: CustomTextStyles.bodySmallBlack90087,
                      ),
                    ),
                    SizedBox(height: 16.v),
                    _buildEmail(context),
                    SizedBox(height: 23.v),
                    Opacity(
                      opacity: 0.5,
                      child: Text(
                        "New email",
                        style: CustomTextStyles.bodySmallBlack90087,
                      ),
                    ),
                    SizedBox(height: 16.v),
                    _buildEmail1(context),
                    SizedBox(height: 25.v),
                    Opacity(
                      opacity: 0.5,
                      child: Text(
                        "Enter your email password",
                        style: CustomTextStyles.bodySmallBlack90087,
                      ),
                    ),
                    SizedBox(height: 15.v),
                    _buildPassword(context),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildSaveEmail(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.img46Onprimarycontainer,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 10.v,
          bottom: 12.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleFive(
        text: "Change Email",
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFrame2Onprimarycontainer,
          margin: EdgeInsets.fromLTRB(24.h, 10.v, 24.h, 12.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
      controller: emailController,
      hintText: "alexander@gmail.com",
      hintStyle: CustomTextStyles.bodyMediumOnPrimaryContainer,
      textInputType: TextInputType.emailAddress,
      borderDecoration: TextFormFieldStyleHelper.outlineGrayTL42,
    );
  }

  /// Section Widget
  Widget _buildEmail1(BuildContext context) {
    return CustomTextFormField(
      controller: emailController1,
      hintText: "alexander23@gmail.com",
      hintStyle: CustomTextStyles.bodyMediumOnPrimaryContainer,
      textInputType: TextInputType.emailAddress,
      borderDecoration: TextFormFieldStyleHelper.outlineGrayTL42,
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
      controller: passwordController,
      textInputAction: TextInputAction.done,
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
  Widget _buildSaveEmail(BuildContext context) {
    return CustomElevatedButton(
      text: "Save Email",
      margin: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 40.v,
      ),
    );
  }
}
