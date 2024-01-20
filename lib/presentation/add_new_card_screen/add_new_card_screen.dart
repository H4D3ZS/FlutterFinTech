import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';
import 'package:hades/widgets/app_bar/appbar_leading_image.dart';
import 'package:hades/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:hades/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hades/widgets/app_bar/custom_app_bar.dart';
import 'package:hades/widgets/custom_elevated_button.dart';
import 'package:hades/widgets/custom_text_form_field.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class AddNewCardScreen extends StatelessWidget {
  AddNewCardScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController dateController = TextEditingController();

  TextEditingController cvvController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  TextEditingController addressController1 = TextEditingController();

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
            vertical: 17.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Opacity(
                opacity: 0.5,
                child: Text(
                  "Card Number",
                  style: CustomTextStyles.bodySmallBlack90087,
                ),
              ),
              SizedBox(height: 15.v),
              _buildForm(context),
              SizedBox(height: 23.v),
              _buildExpiredDateAnd(context),
              SizedBox(height: 23.v),
              Opacity(
                opacity: 0.5,
                child: Text(
                  "Cardholder Name",
                  style: CustomTextStyles.bodySmallBlack90087,
                ),
              ),
              SizedBox(height: 16.v),
              _buildName(context),
              SizedBox(height: 25.v),
              Text(
                "Billing Address",
                style: CustomTextStyles.titleMediumOnPrimaryContainer,
              ),
              SizedBox(height: 21.v),
              Opacity(
                opacity: 0.5,
                child: Text(
                  "Address Line 1",
                  style: CustomTextStyles.bodySmallBlack90087,
                ),
              ),
              SizedBox(height: 16.v),
              _buildAddress(context),
              SizedBox(height: 23.v),
              Opacity(
                opacity: 0.5,
                child: Text(
                  "Address Line 2",
                  style: CustomTextStyles.bodySmallBlack90087,
                ),
              ),
              SizedBox(height: 16.v),
              _buildAddress1(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildSaveCard(context),
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
      title: AppbarSubtitleFive(
        text: "Add Card",
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
  Widget _buildForm(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 6.h,
              top: 5.v,
              bottom: 5.v,
            ),
            child: Text(
              "0101 3920 1001 3304",
              style: CustomTextStyles.bodyMediumOnPrimaryContainer,
            ),
          ),
          Container(
            decoration: AppDecoration.fillPrimary.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder6,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 16.v,
                      width: 33.h,
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: OutlineGradientButton(
                              padding: EdgeInsets.only(
                                left: 4.h,
                                top: 4.v,
                                right: 4.h,
                                bottom: 4.v,
                              ),
                              strokeWidth: 4.h,
                              gradient: LinearGradient(
                                begin: Alignment(0.94, 0.06),
                                end: Alignment(0.22, 1.04),
                                colors: [
                                  appTheme.whiteA700.withOpacity(0.48),
                                  appTheme.whiteA700.withOpacity(0),
                                ],
                              ),
                              child: Container(
                                height: 15.v,
                                width: 13.h,
                                decoration: BoxDecoration(),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 4.h,
                                top: 4.v,
                              ),
                              child: Text(
                                "Payment Card",
                                style: CustomTextStyles.poppinsWhiteA700Regular,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              "1231  3212  2221 0910",
                              style: CustomTextStyles.poppinsGray5002Medium3,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup8906,
                      height: 3.v,
                      width: 6.h,
                      radius: BorderRadius.circular(
                        1.h,
                      ),
                      margin: EdgeInsets.only(
                        left: 3.h,
                        top: 4.v,
                        bottom: 8.v,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 42.h,
                    margin: EdgeInsets.only(left: 4.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 1.v,
                            bottom: 4.v,
                          ),
                          child: Text(
                            "2887.65",
                            style: CustomTextStyles.poppinsGray5002,
                          ),
                        ),
                        SizedBox(
                          height: 11.v,
                          width: 17.h,
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: OutlineGradientButton(
                                  padding: EdgeInsets.only(
                                    left: 3.h,
                                    top: 3.v,
                                    right: 3.h,
                                    bottom: 3.v,
                                  ),
                                  strokeWidth: 3.h,
                                  gradient: LinearGradient(
                                    begin: Alignment(-0.36, 0.48),
                                    end: Alignment(1, 0.18),
                                    colors: [
                                      appTheme.whiteA700.withOpacity(0),
                                      appTheme.whiteA700.withOpacity(0.2),
                                    ],
                                  ),
                                  corners: Corners(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                  ),
                                  child: Container(
                                    height: 11.v,
                                    width: 17.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        8.h,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    right: 3.h,
                                    bottom: 2.v,
                                  ),
                                  child: Text(
                                    "12/24",
                                    style: CustomTextStyles
                                        .poppinsWhiteA700Regular,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildExpiredDate(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 1.v),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Opacity(
            opacity: 0.5,
            child: Text(
              "Expired Date",
              style: CustomTextStyles.bodySmallBlack90087,
            ),
          ),
          SizedBox(height: 15.v),
          Opacity(
            opacity: 0.2,
            child: CustomTextFormField(
              width: 155.h,
              controller: dateController,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCVCCVV(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Opacity(
          opacity: 0.5,
          child: Text(
            "CVC/CVV",
            style: CustomTextStyles.bodySmallBlack90087,
          ),
        ),
        SizedBox(height: 16.v),
        Opacity(
          opacity: 0.2,
          child: CustomTextFormField(
            width: 156.h,
            controller: cvvController,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildExpiredDateAnd(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildExpiredDate(context),
        _buildCVCCVV(context),
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
  Widget _buildAddress(BuildContext context) {
    return CustomTextFormField(
      controller: addressController,
      hintText: "2890 Pangandaran Street",
      hintStyle: CustomTextStyles.bodyMediumOnPrimaryContainer,
      borderDecoration: TextFormFieldStyleHelper.outlineGrayTL42,
    );
  }

  /// Section Widget
  Widget _buildAddress1(BuildContext context) {
    return Opacity(
      opacity: 0.2,
      child: CustomTextFormField(
        controller: addressController1,
        textInputAction: TextInputAction.done,
      ),
    );
  }

  /// Section Widget
  Widget _buildSaveCard(BuildContext context) {
    return CustomElevatedButton(
      text: "Save Card",
      margin: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 40.v,
      ),
      buttonTextStyle: CustomTextStyles.titleMediumMedium,
    );
  }
}
