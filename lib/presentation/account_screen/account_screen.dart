import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';
import 'package:hades/widgets/app_bar/appbar_leading_image.dart';
import 'package:hades/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:hades/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hades/widgets/app_bar/custom_app_bar.dart';
import 'package:hades/widgets/custom_elevated_button.dart';
import 'package:hades/widgets/custom_outlined_button.dart';
import 'package:hades/widgets/custom_switch.dart';

class AccountScreen extends StatelessWidget {
  AccountScreen({Key? key})
      : super(
          key: key,
        );

  bool isSelectedSwitch = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 35.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 4.v),
              _buildRow(context),
              SizedBox(height: 24.v),
              Divider(
                indent: 5.h,
                endIndent: 6.h,
              ),
              SizedBox(height: 78.v),
              Container(
                width: 289.h,
                margin: EdgeInsets.symmetric(horizontal: 19.h),
                child: Text(
                  "Make sure you can remember you\npassword, as you’ll need it to sign back in",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyMediumBluegray400.copyWith(
                    height: 1.29,
                  ),
                ),
              ),
              SizedBox(height: 32.v),
              Text(
                "and******@gmail.com",
                style: CustomTextStyles.titleSmallBluegray400,
              ),
              Spacer(),
              _buildButton(context),
              SizedBox(height: 22.v),
              Text(
                "Delete account",
                style: CustomTextStyles.titleMediumOnPrimaryMedium.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
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
        text: "Account",
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
  Widget _buildRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 5.h,
        right: 6.h,
      ),
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
              "Hide Account",
              style: CustomTextStyles.titleMediumOnError,
            ),
          ),
          CustomSwitch(
            value: isSelectedSwitch,
            onChange: (value) {
              isSelectedSwitch = value;
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildButton(BuildContext context) {
    return Column(
      children: [
        CustomElevatedButton(
          text: "Change Password",
        ),
        SizedBox(height: 16.v),
        CustomOutlinedButton(
          text: "Logout",
        ),
      ],
    );
  }
}
