import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';
import 'package:hades/widgets/custom_elevated_button.dart';
import 'package:hades/widgets/custom_text_form_field.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

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
                padding: EdgeInsets.only(
                  left: 24.h,
                  top: 66.v,
                  right: 24.h,
                ),
                child: Column(
                  children: [
                    Text(
                      "Forgot Password",
                      style: theme.textTheme.headlineSmall,
                    ),
                    SizedBox(height: 60.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgForgetPassword,
                      height: 179.adaptSize,
                      width: 179.adaptSize,
                    ),
                    SizedBox(height: 56.v),
                    Container(
                      width: 307.h,
                      margin: EdgeInsets.symmetric(horizontal: 10.h),
                      child: Text(
                        "Enter your registered email below to receive\npassword reset instruction",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodyMedium!.copyWith(
                          height: 1.71,
                        ),
                      ),
                    ),
                    SizedBox(height: 37.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Opacity(
                        opacity: 0.5,
                        child: Text(
                          "Email Address",
                          style: CustomTextStyles.bodySmallBlack90087,
                        ),
                      ),
                    ),
                    SizedBox(height: 12.v),
                    CustomTextFormField(
                      controller: emailController,
                      hintText: "alexander@gmail.com",
                      hintStyle: CustomTextStyles.bodyMediumOnPrimaryContainer,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.emailAddress,
                      borderDecoration: TextFormFieldStyleHelper.outlineGrayTL4,
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildSendVerificationCode(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildSendVerificationCode(BuildContext context) {
    return CustomElevatedButton(
      text: "Send Verification Code",
      margin: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 40.v,
      ),
    );
  }
}
