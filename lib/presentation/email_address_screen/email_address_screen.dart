import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';
import 'package:hades/widgets/app_bar/appbar_title.dart';
import 'package:hades/widgets/app_bar/custom_app_bar.dart';
import 'package:hades/widgets/custom_elevated_button.dart';
import 'package:hades/widgets/custom_outlined_button.dart';
import 'package:hades/widgets/custom_text_form_field.dart';

class EmailAddressScreen extends StatelessWidget {
  EmailAddressScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController eyeoffController = TextEditingController();

  TextEditingController newpasswordController = TextEditingController();

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
                  vertical: 40.v,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 81.v),
                    _buildEyeoff(context),
                    SizedBox(height: 43.v),
                    _buildNewpassword(context),
                    Spacer(),
                    _buildSave(context),
                    SizedBox(height: 16.v),
                    _buildCancel(context),
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
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 66.v,
      centerTitle: true,
      title: AppbarTitle(
        text: "Change Password",
      ),
    );
  }

  /// Section Widget
  Widget _buildEyeoff(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12.h),
      child: CustomTextFormField(
        controller: eyeoffController,
        suffix: SizedBox(
          child: CustomImageView(
            imagePath: ImageConstant.imgEyeoff,
            height: 16.adaptSize,
            width: 16.adaptSize,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 27.v,
        ),
        obscureText: true,
      ),
    );
  }

  /// Section Widget
  Widget _buildNewpassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12.h),
      child: CustomTextFormField(
        controller: newpasswordController,
        hintText: "Re-password new password",
        hintStyle: CustomTextStyles.bodyMediumInterBluegray400,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        obscureText: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 18.h),
        borderDecoration: TextFormFieldStyleHelper.underLineGray,
      ),
    );
  }

  /// Section Widget
  Widget _buildSave(BuildContext context) {
    return CustomElevatedButton(
      text: "Save",
    );
  }

  /// Section Widget
  Widget _buildCancel(BuildContext context) {
    return CustomOutlinedButton(
      text: "Cancel",
    );
  }
}
