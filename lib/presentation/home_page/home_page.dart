import '../home_page/widgets/iconandtitle_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';
import 'package:hades/widgets/app_bar/appbar_subtitle.dart';
import 'package:hades/widgets/app_bar/appbar_subtitle_six.dart';
import 'package:hades/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hades/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  const HomePage({Key? key})
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
            padding: EdgeInsets.only(top: 31.v),
            child: Container(
              height: 684.v,
              width: 351.h,
              margin: EdgeInsets.only(left: 24.h),
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  _buildYourSaving(context),
                  _buildFiftyFour(context),
                  _buildYourCards(context),
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
      height: 64.v,
      title: Padding(
        padding: EdgeInsets.only(left: 24.h),
        child: Column(
          children: [
            AppbarSubtitleSix(
              text: "Welcome Back",
            ),
            SizedBox(height: 6.v),
            AppbarSubtitle(
              text: "User",
              margin: EdgeInsets.only(right: 63.h),
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.img3,
          margin: EdgeInsets.fromLTRB(24.h, 16.v, 24.h, 15.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildYourSaving(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 24.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Your Saving",
                  style: CustomTextStyles.titleMediumPrimary,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 3.v),
                  child: Text(
                    "View All",
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ],
            ),
            SizedBox(height: 14.v),
            Container(
              padding: EdgeInsets.all(16.h),
              decoration: AppDecoration.outlineGray900.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildFiftyEight(context),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: _buildTitleAndDate(
                      context,
                      buyText: "Buy Playstation",
                      fileSize: "Slim 1 TB 56 Games",
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    height: 48.adaptSize,
                    width: 48.adaptSize,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            height: 48.adaptSize,
                            width: 48.adaptSize,
                            child: CircularProgressIndicator(
                              value: 0.5,
                              strokeWidth: 5.h,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "80 %",
                            style: CustomTextStyles.labelLargePrimary_1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.v),
            Container(
              padding: EdgeInsets.all(16.h),
              decoration: AppDecoration.outlineGray900.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildFiftyEight(context),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: _buildTitleAndDate(
                      context,
                      buyText: "Buy Playstation",
                      fileSize: "Slim 1 TB 56 Games",
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    height: 48.adaptSize,
                    width: 48.adaptSize,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            height: 48.adaptSize,
                            width: 48.adaptSize,
                            child: CircularProgressIndicator(
                              value: 0.5,
                              strokeWidth: 5.h,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "80 %",
                            style: CustomTextStyles.labelLargePrimary_1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFiftyFour(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        margin: EdgeInsets.only(right: 24.h),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              ImageConstant.imgGroup54,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 13.v,
          ),
          decoration: AppDecoration.outlineGray900.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 2.v),
                      child: Text(
                        "My Balance",
                        style: CustomTextStyles.bodyMediumPrimary,
                      ),
                    ),
                    Text(
                      "2887.65",
                      style: CustomTextStyles.titleMediumPrimary_2,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.v),
              Divider(
                color: appTheme.gray10002,
              ),
              SizedBox(height: 23.v),
              SizedBox(
                height: 78.v,
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 7.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      width: 26.h,
                    );
                  },
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return IconandtitleItemWidget();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildYourCards(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(
          top: 196.v,
          bottom: 240.v,
        ),
        child: IntrinsicWidth(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 23.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Your Cards",
                      style: CustomTextStyles.titleMediumPrimary,
                    ),
                    Text(
                      "View All",
                      style: theme.textTheme.titleSmall,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 23.v),
              Row(
                children: [
                  Container(
                    decoration: AppDecoration.fillPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: _buildCard(
                      context,
                      paymentCard: "Payment Card",
                      widget: "2298 1268 3398 9874",
                      price: "2885.00",
                      oneThousandTwoHundredTwentyFou: "12/24",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: _buildCard(
                      context,
                      paymentCard: "Payment Card",
                      widget: "1231 3212 2221 0910",
                      price: "2254.43",
                      oneThousandTwoHundredTwentyFou: "12/24",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildFiftyEight(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: theme.colorScheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.circleBorder24,
      ),
      child: Container(
        height: 48.adaptSize,
        width: 48.adaptSize,
        decoration: AppDecoration.fillPrimary.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder24,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgMobile,
              height: 48.adaptSize,
              width: 48.adaptSize,
              alignment: Alignment.center,
            ),
            CustomImageView(
              imagePath: ImageConstant.img104,
              height: 32.adaptSize,
              width: 32.adaptSize,
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildTitleAndDate(
    BuildContext context, {
    required String buyText,
    required String fileSize,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          buyText,
          style: theme.textTheme.titleSmall!.copyWith(
            color: theme.colorScheme.primary,
          ),
        ),
        SizedBox(height: 5.v),
        Text(
          fileSize,
          style: CustomTextStyles.bodySmallPrimary_1.copyWith(
            color: theme.colorScheme.primary,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildCard(
    BuildContext context, {
    required String paymentCard,
    required String widget,
    required String price,
    required String oneThousandTwoHundredTwentyFou,
  }) {
    return Expanded(
      child: SizedBox(
        width: double.maxFinite,
        child: Container(
          padding: EdgeInsets.all(24.h),
          decoration: AppDecoration.fillPrimary.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup60,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 1.v,
                      bottom: 4.v,
                    ),
                    child: Text(
                      paymentCard,
                      style: CustomTextStyles.bodySmallWhiteA700.copyWith(
                        color: appTheme.whiteA700.withOpacity(0.8),
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgContrast,
                    height: 24.v,
                    width: 40.h,
                  ),
                ],
              ),
              SizedBox(height: 24.v),
              Text(
                widget,
                style: CustomTextStyles.titleMediumGray5002.copyWith(
                  color: appTheme.gray5002,
                ),
              ),
              SizedBox(height: 49.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    price,
                    style: CustomTextStyles.titleLargePoppinsGray5002.copyWith(
                      color: appTheme.gray5002,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.v),
                    child: Text(
                      oneThousandTwoHundredTwentyFou,
                      style: CustomTextStyles.bodyMediumWhiteA700_1.copyWith(
                        color: appTheme.whiteA700.withOpacity(0.8),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
