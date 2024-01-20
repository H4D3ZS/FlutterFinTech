import '../onboarding_one_screen/widgets/titleanddesc_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:hades/core/app_export.dart';
import 'package:hades/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingOneScreen extends StatelessWidget {
  OnboardingOneScreen({Key? key})
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
          padding: EdgeInsets.symmetric(horizontal: 57.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 46.v),
              Container(
                height: 222.v,
                width: 252.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 41.h,
                  vertical: 7.v,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: fs.Svg(
                      ImageConstant.imgGroup16,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup13WhiteA700,
                      height: 157.v,
                      width: 156.h,
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(bottom: 9.v),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 21.h,
                          top: 14.v,
                          right: 34.h,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 46.h,
                          vertical: 33.v,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: fs.Svg(
                              ImageConstant.imgGroup15,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 42.v),
                            Text(
                              "",
                              style: theme.textTheme.headlineMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup14,
                      height: 98.v,
                      width: 156.h,
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(bottom: 9.v),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup10,
                      height: 68.v,
                      width: 156.h,
                      alignment: Alignment.bottomLeft,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 88.v),
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
      padding: EdgeInsets.symmetric(horizontal: 13.h),
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
          return TitleanddescItemWidget();
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
