import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';
import 'package:hades/widgets/app_bar/appbar_title.dart';
import 'package:hades/widgets/app_bar/custom_app_bar.dart';
import 'package:hades/widgets/custom_elevated_button.dart';
import 'package:hades/widgets/custom_outlined_button.dart';
import 'package:hades/widgets/custom_switch.dart';

class AccountOneScreen extends StatelessWidget {
  AccountOneScreen({Key? key})
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
            vertical: 36.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 4.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 8.v,
                        bottom: 1.v,
                      ),
                      child: Text(
                        "Hide Account",
                        style:
                            CustomTextStyles.titleMediumInterOnPrimaryContainer,
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
              ),
              SizedBox(height: 14.v),
              Divider(
                indent: 6.h,
                endIndent: 5.h,
              ),
              SizedBox(height: 79.v),
              Container(
                width: 296.h,
                margin: EdgeInsets.only(
                  left: 16.h,
                  right: 15.h,
                ),
                child: Text(
                  "Make sure you can remember you password,\nas you’ll need it to sign back in",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyMediumInterBluegray400.copyWith(
                    height: 1.29,
                  ),
                ),
              ),
              SizedBox(height: 33.v),
              Text(
                "ed******@gmail.com",
                style: CustomTextStyles.titleSmallInterBluegray400,
              ),
              Spacer(),
              CustomElevatedButton(
                text: "Change Pasword",
              ),
              SizedBox(height: 16.v),
              CustomOutlinedButton(
                text: "Logout",
              ),
              SizedBox(height: 31.v),
              Text(
                "Delete account",
                style: CustomTextStyles.bodyLargeBluegray400.copyWith(
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
      height: 63.v,
      centerTitle: true,
      title: AppbarTitle(
        text: "Account",
      ),
    );
  }
}
