import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';
import 'package:hades/widgets/app_bar/appbar_leading_image.dart';
import 'package:hades/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:hades/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hades/widgets/app_bar/custom_app_bar.dart';
import 'package:hades/widgets/custom_elevated_button.dart';
import 'package:hades/widgets/custom_icon_button.dart';

class SendMoneyTwoScreen extends StatelessWidget {
  const SendMoneyTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 28.v,
          ),
          child: Column(
            children: [
              Text(
                "Amount of Money",
                style: theme.textTheme.bodyMedium,
              ),
              SizedBox(height: 14.v),
              _buildAmount(context),
              SizedBox(height: 31.v),
              _buildProfile(context),
              SizedBox(height: 32.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Description",
                  style: CustomTextStyles.bodySmallGray500_1,
                ),
              ),
              SizedBox(height: 9.v),
              _buildView(context),
              SizedBox(height: 60.v),
              CustomElevatedButton(
                text: "Send Money",
                buttonTextStyle: CustomTextStyles.titleMediumMedium,
              ),
              SizedBox(height: 39.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 34.h),
                child: _buildSeven(
                  context,
                  seven: "1",
                  eight: "2",
                  nine: "3",
                ),
              ),
              SizedBox(height: 21.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 34.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.v),
                      child: Text(
                        "4",
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                    CustomElevatedButton(
                      height: 54.v,
                      width: 117.h,
                      text: "5",
                      buttonStyle: CustomButtonStyles.fillGray,
                      buttonTextStyle: theme.textTheme.titleLarge!,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.v),
                      child: Text(
                        "6",
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 21.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 34.h),
                child: _buildSeven(
                  context,
                  seven: "7",
                  eight: "8",
                  nine: "9",
                ),
              ),
              SizedBox(height: 36.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 28.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "0",
                        style: theme.textTheme.titleLarge,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgClosePrimarycontainer,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(left: 105.h),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
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
        text: "Send Money",
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
  Widget _buildAmount(BuildContext context) {
    return SizedBox(
      height: 72.v,
      width: 327.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              "58.90",
              style: theme.textTheme.displayMedium,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 15.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomIconButton(
                    height: 41.adaptSize,
                    width: 41.adaptSize,
                    child: CustomImageView(),
                  ),
                  CustomIconButton(
                    height: 41.adaptSize,
                    width: 41.adaptSize,
                    padding: EdgeInsets.all(13.h),
                    decoration: IconButtonStyleHelper.fillPrimaryTL20,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgCloseWhiteA700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProfile(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgPlay48x48,
          height: 48.adaptSize,
          width: 48.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Vina Andini",
                  style: CustomTextStyles.titleSmallOnPrimaryContainer,
                ),
              ),
              SizedBox(height: 7.v),
              Text(
                "0821 2103 1120",
                style: CustomTextStyles.bodySmallGray500_1,
              ),
            ],
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.img18,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(
            top: 10.v,
            bottom: 18.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return SizedBox(
      height: 32.v,
      width: 327.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Opacity(
            opacity: 0.7,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 30.v,
                width: 327.h,
                decoration: BoxDecoration(
                  color: appTheme.whiteA700.withOpacity(0.6),
                ),
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.img18,
            height: 20.adaptSize,
            width: 20.adaptSize,
            alignment: Alignment.topRight,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildSeven(
    BuildContext context, {
    required String seven,
    required String eight,
    required String nine,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          seven,
          style: theme.textTheme.titleLarge!.copyWith(
            color: theme.colorScheme.secondaryContainer,
          ),
        ),
        Text(
          eight,
          style: theme.textTheme.titleLarge!.copyWith(
            color: theme.colorScheme.secondaryContainer,
          ),
        ),
        Text(
          nine,
          style: theme.textTheme.titleLarge!.copyWith(
            color: theme.colorScheme.secondaryContainer,
          ),
        ),
      ],
    );
  }
}
