import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';
import 'package:hades/widgets/custom_elevated_button.dart';
import 'package:hades/widgets/custom_text_form_field.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

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
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    _buildSHIELDPAY(context),
                    SizedBox(height: 15.v),
                    Text(
                      "Welcome Back!",
                      style: theme.textTheme.headlineSmall,
                    ),
                    SizedBox(height: 37.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Opacity(
                        opacity: 0.5,
                        child: Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Text(
                            "Email Address",
                            style: CustomTextStyles.bodySmallBlack90087,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 12.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.h),
                      child: CustomTextFormField(
                        controller: emailController,
                        hintText: "alexander@gmail.com",
                        hintStyle:
                            CustomTextStyles.bodyMediumOnPrimaryContainer,
                        textInputType: TextInputType.emailAddress,
                        borderDecoration:
                            TextFormFieldStyleHelper.outlineGrayTL4,
                      ),
                    ),
                    SizedBox(height: 23.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Opacity(
                        opacity: 0.5,
                        child: Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Text(
                            "Password",
                            style: CustomTextStyles.bodySmallBlack90087,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 12.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.h),
                      child: CustomTextFormField(
                        controller: passwordController,
                        textInputAction: TextInputAction.done,
                        suffix: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 12.v, 16.h, 12.v),
                          child: CustomImageView(
                            imagePath: ImageConstant.img15Gray500,
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
                    ),
                    SizedBox(height: 17.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 24.h),
                        child: Text(
                          "Forgot Password ?",
                          style: CustomTextStyles.labelLargeGray400,
                        ),
                      ),
                    ),
                    SizedBox(height: 33.v),
                    CustomElevatedButton(
                      text: "Sign In",
                      margin: EdgeInsets.symmetric(horizontal: 24.h),
                    ),
                    SizedBox(height: 15.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Text(
                            "Don’t have an account ?",
                            style: CustomTextStyles.bodySmallGray500_1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text(
                            "Sign Up",
                            style: CustomTextStyles.labelLargePrimary,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSHIELDPAY(BuildContext context) {
    return SizedBox(
      height: 260.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 47.v,
              ),
              decoration: AppDecoration.fillPrimary,
              child: Text(
                "SHIELDPAY",
                style: CustomTextStyles.headlineSmallWhiteA700,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgLayer1WhiteA700,
            height: 219.v,
            width: 158.h,
            alignment: Alignment.bottomRight,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgLayer1WhiteA700152x82,
            height: 152.v,
            width: 82.h,
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(bottom: 6.v),
          ),
        ],
      ),
    );
  }
}
