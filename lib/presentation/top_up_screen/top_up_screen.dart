import '../top_up_screen/widgets/nomineesuggested_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';
import 'package:hades/widgets/app_bar/appbar_leading_image.dart';
import 'package:hades/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:hades/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hades/widgets/app_bar/custom_app_bar.dart';
import 'package:hades/widgets/custom_elevated_button.dart';
import 'package:hades/widgets/custom_icon_button.dart';

class TopUpScreen extends StatelessWidget {
  const TopUpScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: _buildAppBar(context),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup54,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 24.h,
              vertical: 27.v,
            ),
            child: Column(
              children: [
                _buildCardAndAmount(context),
                SizedBox(height: 23.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Enter Nominal",
                    style: CustomTextStyles.titleMediumPrimary,
                  ),
                ),
                SizedBox(height: 16.v),
                _buildNominee(context),
                SizedBox(height: 24.v),
                _buildNomineeSuggested(context),
                SizedBox(height: 36.v),
                CustomElevatedButton(
                  text: "Proceed",
                ),
                SizedBox(height: 17.v),
                Text(
                  "Cancel",
                  style: CustomTextStyles.titleMediumPrimary_2.copyWith(
                    decoration: TextDecoration.underline,
                  ),
                ),
                SizedBox(height: 5.v),
              ],
            ),
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
        imagePath: ImageConstant.img46WhiteA700,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 10.v,
          bottom: 12.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleThree(
        text: "Top Up",
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFrame2WhiteA700,
          margin: EdgeInsets.fromLTRB(24.h, 10.v, 24.h, 12.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildCardAndAmount(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.outlineGray900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 7.h,
              vertical: 6.v,
            ),
            decoration: AppDecoration.fillPrimary.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder6,
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 1.v),
                SizedBox(
                  width: 79.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 2.v),
                        child: Text(
                          "Payment Card",
                          style: CustomTextStyles.poppinsWhiteA700,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgContrast,
                        height: 9.v,
                        width: 15.h,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 7.v),
                Text(
                  "1231  3212  2221 0910",
                  style: CustomTextStyles.poppinsGray5002Medium,
                ),
                SizedBox(height: 9.v),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 1.v),
                      child: Text(
                        "2885.00",
                        style: CustomTextStyles.poppinsGray5002SemiBold,
                      ),
                    ),
                    Container(
                      width: 10.h,
                      margin: EdgeInsets.only(
                        left: 37.h,
                        top: 5.v,
                      ),
                      child: Text(
                        "12/24",
                        maxLines: null,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.poppinsWhiteA700.copyWith(
                          height: 5.00,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 21.v,
              bottom: 22.v,
            ),
            child: Text(
              "Debit",
              style: CustomTextStyles.labelLargeGray700,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 19.v,
              bottom: 18.v,
            ),
            child: Text(
              "364.00",
              style: CustomTextStyles.titleMediumPrimary_2,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgVectorGray500,
            height: 4.v,
            width: 8.h,
            margin: EdgeInsets.only(
              left: 6.h,
              top: 31.v,
              bottom: 27.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNominee(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlineGray900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Set the nominal needs",
            style: theme.textTheme.bodyMedium,
          ),
          SizedBox(height: 15.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 8.v,
                  bottom: 7.v,
                ),
                child: CustomIconButton(
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  child: CustomImageView(),
                ),
              ),
              Text(
                "150",
                style: CustomTextStyles.headlineLargePrimary,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 8.v,
                  bottom: 7.v,
                ),
                child: CustomIconButton(
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  padding: EdgeInsets.all(9.h),
                  decoration: IconButtonStyleHelper.fillPrimaryTL16,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgCloseWhiteA700,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 24.v),
          SliderTheme(
            data: SliderThemeData(
              trackShape: RoundedRectSliderTrackShape(),
              activeTrackColor: theme.colorScheme.primary,
              inactiveTrackColor: appTheme.gray400.withOpacity(0.4),
              thumbColor: theme.colorScheme.primary,
              thumbShape: RoundSliderThumbShape(),
            ),
            child: Slider(
              value: 100.0,
              min: 0.0,
              max: 100.0,
              onChanged: (value) {},
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNomineeSuggested(BuildContext context) {
    return Wrap(
      runSpacing: 16.v,
      spacing: 16.h,
      children:
          List<Widget>.generate(9, (index) => NomineesuggestedItemWidget()),
    );
  }
}
