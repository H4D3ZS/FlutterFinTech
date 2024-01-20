import '../onboarding_two_screen/widgets/titleanddesc1_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';
import 'package:hades/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingTwoScreen extends StatelessWidget {
  OnboardingTwoScreen({Key? key})
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
          padding: EdgeInsets.symmetric(
            horizontal: 46.h,
            vertical: 64.v,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 33.v),
              CustomImageView(
                imagePath: ImageConstant.imgGroup17,
                height: 222.v,
                width: 282.h,
              ),
              Spacer(),
              _buildTitleAndDesc(context),
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
        bottomNavigationBar: _buildComponentOne(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildTitleAndDesc(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child: CarouselSlider.builder(
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
          return Titleanddesc1ItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildComponentOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 38.v,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomElevatedButton(
            text: "Next Step",
          ),
          Padding(
            padding: EdgeInsets.only(top: 17.v),
            child: Text(
              "Skip This Step",
              style: CustomTextStyles.titleMediumPrimary_2.copyWith(
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
