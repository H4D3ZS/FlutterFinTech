import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';
import 'package:hades/widgets/custom_elevated_button.dart';
import 'package:hades/widgets/custom_outlined_button.dart';
import 'package:hades/widgets/custom_text_form_field.dart';

class PersonalScreen extends StatelessWidget {
  PersonalScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController fullNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController countryCodeController = TextEditingController();

  TextEditingController addressController = TextEditingController();

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
                  vertical: 30.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildFullName(context),
                    SizedBox(height: 37.v),
                    _buildLastName(context),
                    SizedBox(height: 39.v),
                    _buildNumber(context),
                    SizedBox(height: 40.v),
                    _buildCalendar(context),
                    SizedBox(height: 40.v),
                    _buildAddress(context),
                    SizedBox(height: 38.v),
                    Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: Text(
                        "Description",
                        style: CustomTextStyles.bodyMediumInterBluegray400,
                      ),
                    ),
                    SizedBox(height: 55.v),
                    Divider(
                      indent: 6.h,
                      endIndent: 6.h,
                    ),
                    Spacer(),
                    _buildSave(context),
                    SizedBox(height: 16.v),
                    _buildCancel(context),
                    SizedBox(height: 9.v),
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
  Widget _buildFullName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: CustomTextFormField(
        controller: fullNameController,
        hintText: "Samantha William",
        borderDecoration: TextFormFieldStyleHelper.underLineBlueGray,
      ),
    );
  }

  /// Section Widget
  Widget _buildLastName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: CustomTextFormField(
        controller: lastNameController,
        hintText: "Last Name",
        hintStyle: CustomTextStyles.bodyMediumInterBluegray400,
        borderDecoration: TextFormFieldStyleHelper.underLineGray,
      ),
    );
  }

  /// Section Widget
  Widget _buildCountryCode(BuildContext context) {
    return CustomTextFormField(
      width: 80.h,
      controller: countryCodeController,
      hintText: "US +01",
      contentPadding: EdgeInsets.symmetric(horizontal: 8.h),
      borderDecoration: TextFormFieldStyleHelper.underLineBlueGray,
    );
  }

  /// Section Widget
  Widget _buildNumber(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildCountryCode(context),
          Padding(
            padding: EdgeInsets.only(top: 27.v),
            child: SizedBox(
              width: 215.h,
              child: Divider(),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCalendar(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgCalendar,
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.only(bottom: 12.v),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 27.v),
              child: Divider(
                color: appTheme.blueGray400,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10.v),
            child: Text(
              "Birthday - 22 June 1999",
              style: CustomTextStyles.bodyMediumInterOnError,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddress(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: CustomTextFormField(
        controller: addressController,
        hintText: "2972 Westheimer Rd. Santa Ana, Illinois 8...",
        textInputAction: TextInputAction.done,
        prefix: Container(
          margin: EdgeInsets.only(
            right: 10.h,
            bottom: 12.v,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgLinkedin,
            height: 16.adaptSize,
            width: 16.adaptSize,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 28.v,
        ),
        contentPadding: EdgeInsets.only(
          top: 1.v,
          right: 3.h,
          bottom: 1.v,
        ),
        borderDecoration: TextFormFieldStyleHelper.underLineBlueGray,
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
