import '../onboarding_three_screen/widgets/slidertitleanddesc_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';
import 'package:hades/widgets/custom_elevated_button.dart';
import 'package:hades/widgets/custom_outlined_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingThreeScreen extends StatelessWidget {
  OnboardingThreeScreen({Key? key})
      : super(
          key: key,
        );

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 32.v),
          child: Column(
            children: [
              SizedBox(height: 99.v),
              SizedBox(
                height: 209.v,
                width: 243.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup23,
                      height: 195.v,
                      width: 133.h,
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 45.h),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup8902,
                      height: 202.v,
                      width: 243.h,
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 79.v),
              _buildSliderTitleAndDesc(context),
              SizedBox(height: 21.v),
              SizedBox(
                height: 8.v,
                child: AnimatedSmoothIndicator(
                  activeIndex: sliderIndex,
                  count: 1,
                  axisDirection: Axis.horizontal,
                  effect: ScrollingDotsEffect(
                    spacing: 24,
                    activeDotColor: theme.colorScheme.primary,
                    dotColor: appTheme.gray10001,
                    dotHeight: 8.v,
                    dotWidth: 8.h,
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildButtonSection(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildSliderTitleAndDesc(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: 117.v,
        initialPage: 0,
        autoPlay: true,
        viewportFraction: 1.0,
        enableInfiniteScroll: false,
        scrollDirection: Axis.horizontal,
        onPageChanged: (
          index,
          reason,
        ) {
          sliderIndex = index;
        },
      ),
      itemCount: 1,
      itemBuilder: (context, index, realIndex) {
        return SlidertitleanddescItemWidget();
      },
    );
  }

  /// Section Widget
  Widget _buildButtonSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 40.v,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomElevatedButton(
            text: "Create Account",
          ),
          CustomOutlinedButton(
            text: "Login Now",
            margin: EdgeInsets.only(top: 16.v),
          ),
        ],
      ),
    );
  }
}
