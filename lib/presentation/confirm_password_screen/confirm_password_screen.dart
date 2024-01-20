import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';
import 'package:hades/widgets/custom_elevated_button.dart';

class ConfirmPasswordScreen extends StatelessWidget {
  const ConfirmPasswordScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(47.h),
          child: Column(
            children: [
              SizedBox(height: 81.v),
              Text(
                "Confirm password",
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 99.v),
              CustomImageView(
                imagePath: ImageConstant.imgCode,
                height: 13.v,
                width: 154.h,
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.h),
                child: _buildSeven(
                  context,
                  seven: "1",
                  eight: "2",
                  nine: "3",
                ),
              ),
              SizedBox(height: 21.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 16.v,
                        bottom: 15.v,
                      ),
                      child: Text(
                        "4",
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                    CustomElevatedButton(
                      width: 120.h,
                      text: "5",
                      buttonStyle: CustomButtonStyles.fillGray,
                      buttonTextStyle: theme.textTheme.titleLarge!,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 16.v,
                        bottom: 15.v,
                      ),
                      child: Text(
                        "6",
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 22.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.h),
                child: _buildSeven(
                  context,
                  seven: "7",
                  eight: "8",
                  nine: "9",
                ),
              ),
              SizedBox(height: 37.v),
              Align(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "0",
                      style: theme.textTheme.titleLarge,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgClose,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(left: 108.h),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
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
