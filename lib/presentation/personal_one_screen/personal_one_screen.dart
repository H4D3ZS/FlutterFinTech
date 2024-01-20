import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';
import 'package:hades/widgets/app_bar/appbar_leading_image.dart';
import 'package:hades/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:hades/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hades/widgets/app_bar/custom_app_bar.dart';
import 'package:hades/widgets/custom_elevated_button.dart';
import 'package:hades/widgets/custom_text_form_field.dart';

class PersonalOneScreen extends StatelessWidget {
  PersonalOneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController nameController = TextEditingController();

  TextEditingController locationController = TextEditingController();

  TextEditingController editTextController = TextEditingController();

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
            vertical: 11.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Opacity(
                opacity: 0.5,
                child: Text(
                  "Name",
                  style: CustomTextStyles.bodySmallBlack90087,
                ),
              ),
              SizedBox(height: 16.v),
              _buildName(context),
              SizedBox(height: 24.v),
              Opacity(
                opacity: 0.5,
                child: Text(
                  "Birhday",
                  style: CustomTextStyles.bodySmallBlack90087,
                ),
              ),
              SizedBox(height: 14.v),
              _buildTen(context),
              SizedBox(height: 23.v),
              Opacity(
                opacity: 0.5,
                child: Text(
                  "Adress",
                  style: CustomTextStyles.bodySmallBlack90087,
                ),
              ),
              SizedBox(height: 16.v),
              _buildLocation(context),
              SizedBox(height: 25.v),
              Opacity(
                opacity: 0.5,
                child: Text(
                  "Description",
                  style: CustomTextStyles.bodySmallBlack90087,
                ),
              ),
              SizedBox(height: 15.v),
              _buildEditText(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildSaveProfile(context),
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
        text: "Change Personal Profile",
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
  Widget _buildName(BuildContext context) {
    return CustomTextFormField(
      controller: nameController,
      hintText: "Alexander Michael",
      hintStyle: CustomTextStyles.bodyMediumOnPrimaryContainer,
      borderDecoration: TextFormFieldStyleHelper.outlineGrayTL42,
    );
  }

  /// Section Widget
  Widget _buildTen(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlineGray9003.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.img31,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 3.v,
            ),
            child: Text(
              "23 February 1999",
              style: CustomTextStyles.bodyMediumOnPrimaryContainer,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLocation(BuildContext context) {
    return CustomTextFormField(
      controller: locationController,
      hintText: "2910 Western Siwidari",
      hintStyle: CustomTextStyles.bodyMediumOnPrimaryContainer,
      prefix: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 12.v,
        ),
        child: CustomImageView(
          imagePath: ImageConstant.img19,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 48.v,
      ),
      contentPadding: EdgeInsets.only(
        top: 13.v,
        right: 30.h,
        bottom: 13.v,
      ),
      borderDecoration: TextFormFieldStyleHelper.outlineGrayTL42,
    );
  }

  /// Section Widget
  Widget _buildEditText(BuildContext context) {
    return Opacity(
      opacity: 0.2,
      child: CustomTextFormField(
        controller: editTextController,
        textInputAction: TextInputAction.done,
      ),
    );
  }

  /// Section Widget
  Widget _buildSaveProfile(BuildContext context) {
    return CustomElevatedButton(
      text: "Save Profile",
      margin: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 40.v,
      ),
    );
  }
}
