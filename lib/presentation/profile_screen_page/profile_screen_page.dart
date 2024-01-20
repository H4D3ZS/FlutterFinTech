import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';
import 'package:hades/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:hades/widgets/app_bar/custom_app_bar.dart';
import 'package:hades/widgets/custom_elevated_button.dart';
import 'package:hades/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class ProfileScreenPage extends StatelessWidget {
  const ProfileScreenPage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 30.v),
            child: Container(
              margin: EdgeInsets.only(bottom: 5.v),
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: Column(
                children: [
                  SizedBox(
                    height: 712.v,
                    width: 327.h,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  ImageConstant.imgGroup54,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildProfile(context),
                                SizedBox(height: 24.v),
                                _buildCode(context),
                                SizedBox(height: 24.v),
                                Text(
                                  "Account",
                                  style: CustomTextStyles
                                      .titleMediumOnPrimaryContainer,
                                ),
                                SizedBox(height: 15.v),
                                _buildChangeEmailAddress(
                                  context,
                                  lock: ImageConstant.imgLock,
                                  changeEmailAddress: "Change Personal Profile",
                                ),
                                SizedBox(height: 16.v),
                                _buildChangeEmailAddress(
                                  context,
                                  lock: ImageConstant.imgLockPrimary,
                                  changeEmailAddress: "Change Email Address",
                                ),
                                SizedBox(height: 16.v),
                                _buildChangeEmailAddress(
                                  context,
                                  lock: ImageConstant.img35,
                                  changeEmailAddress: "Change Password",
                                ),
                              ],
                            ),
                          ),
                        ),
                        _buildSettings(context),
                      ],
                    ),
                  ),
                  SizedBox(height: 26.v),
                  Text(
                    "Log out",
                    style: CustomTextStyles.titleMediumOnPrimary.copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
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
      height: 43.v,
      centerTitle: true,
      title: AppbarSubtitleThree(
        text: "Your Profile",
      ),
    );
  }

  /// Section Widget
  Widget _buildProfile(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.outlineGray900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPlay2,
            height: 48.adaptSize,
            width: 48.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Alexander Michael",
                  style: CustomTextStyles.titleSmallOnPrimaryContainer,
                ),
                SizedBox(height: 7.v),
                Text(
                  "0896 2102 7821",
                  style: CustomTextStyles.bodySmallGray500_1,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomOutlinedButton(
            height: 26.v,
            width: 63.h,
            text: "Basic",
            margin: EdgeInsets.symmetric(vertical: 11.v),
            buttonStyle: CustomButtonStyles.outlinePrimaryTL13,
            buttonTextStyle: theme.textTheme.labelMedium!,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCode(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomElevatedButton(
          height: 72.v,
          width: 155.h,
          text: "Scan QR",
          leftIcon: Container(
            padding: EdgeInsets.all(8.h),
            margin: EdgeInsets.only(right: 16.h),
            decoration: BoxDecoration(
              color: appTheme.deepPurple5002,
              borderRadius: BorderRadius.circular(
                20.h,
              ),
            ),
            child: CustomImageView(
              imagePath: ImageConstant.img77,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          buttonStyle: CustomButtonStyles.outlineGray,
          buttonTextStyle: CustomTextStyles.labelLargePrimary_1,
        ),
        Container(
          padding: EdgeInsets.all(16.h),
          decoration: AppDecoration.outlineGray9002.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Row(
            children: [
              Container(
                height: 40.adaptSize,
                width: 40.adaptSize,
                padding: EdgeInsets.all(8.h),
                decoration: AppDecoration.fillDeeppurple5002.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder20,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgMyQr,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  top: 12.v,
                  bottom: 9.v,
                ),
                child: Text(
                  "My QR",
                  style: CustomTextStyles.labelLargePrimary_1,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSettings(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "More Settings",
            style: CustomTextStyles.titleMediumOnPrimaryContainer,
          ),
          SizedBox(height: 14.v),
          _buildChangeEmailAddress(
            context,
            lock: ImageConstant.img34,
            changeEmailAddress: "Account Security",
          ),
          SizedBox(height: 16.v),
          _buildChangeEmailAddress(
            context,
            lock: ImageConstant.imgHelp,
            changeEmailAddress: "Help and Privacy",
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildChangeEmailAddress(
    BuildContext context, {
    required String lock,
    required String changeEmailAddress,
  }) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.outlineGray900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          Container(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.all(8.h),
            decoration: AppDecoration.fillDeeppurple5002.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder20,
            ),
            child: CustomImageView(
              imagePath: lock,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 11.v,
              bottom: 7.v,
            ),
            child: Text(
              changeEmailAddress,
              style: CustomTextStyles.titleSmallGray700.copyWith(
                color: appTheme.gray700,
              ),
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightGray500,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 10.v),
          ),
        ],
      ),
    );
  }
}
