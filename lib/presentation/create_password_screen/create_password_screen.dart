import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';
import 'package:hades/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CreatePasswordScreen extends StatelessWidget {
  const CreatePasswordScreen({Key? key})
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
                "Create password",
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 98.v),
              SizedBox(
                height: 13.v,
                child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 4,
                  effect: ScrollingDotsEffect(
                    spacing: 34,
                    activeDotColor:
                        theme.colorScheme.onPrimaryContainer.withOpacity(1),
                    dotColor: theme.colorScheme.onPrimaryContainer,
                    dotHeight: 13.v,
                    dotWidth: 13.h,
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.h),
                child: _buildSeven(
                  context,
                  text1: "1",
                  text2: "2",
                  text3: "3",
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
                  text1: "7",
                  text2: "8",
                  text3: "9",
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
    required String text1,
    required String text2,
    required String text3,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: theme.textTheme.titleLarge!.copyWith(
            color: theme.colorScheme.secondaryContainer,
          ),
        ),
        Text(
          text2,
          style: theme.textTheme.titleLarge!.copyWith(
            color: theme.colorScheme.secondaryContainer,
          ),
        ),
        Text(
          text3,
          style: theme.textTheme.titleLarge!.copyWith(
            color: theme.colorScheme.secondaryContainer,
          ),
        ),
      ],
    );
  }
}
