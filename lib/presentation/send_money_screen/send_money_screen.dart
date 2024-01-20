import '../send_money_screen/widgets/nomineesuggested2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';
import 'package:hades/widgets/app_bar/appbar_leading_image.dart';
import 'package:hades/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:hades/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hades/widgets/app_bar/custom_app_bar.dart';
import 'package:hades/widgets/custom_elevated_button.dart';
import 'package:hades/widgets/custom_icon_button.dart';

class SendMoneyScreen extends StatelessWidget {
  const SendMoneyScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 27.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildNominee(context),
              SizedBox(height: 24.v),
              _buildNomineeSuggested(context),
              SizedBox(height: 23.v),
              Text(
                "Send to",
                style: CustomTextStyles.bodySmallPrimary_1,
              ),
              SizedBox(height: 16.v),
              _buildPlay(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildSendMoney(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.img46Onprimarycontainer,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 10.v,
          bottom: 12.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleFive(
        text: "Send Money",
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFrame2Onprimarycontainer,
          margin: EdgeInsets.fromLTRB(24.h, 10.v, 24.h, 12.v),
        ),
      ],
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
            "Set the nominal send",
            style: CustomTextStyles.bodyMediumPrimary,
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
                style: theme.textTheme.headlineLarge,
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
          List<Widget>.generate(9, (index) => Nomineesuggested2ItemWidget()),
    );
  }

  /// Section Widget
  Widget _buildPlay(BuildContext context) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgPlay48x48,
          height: 48.adaptSize,
          width: 48.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Vina Andini",
                  style: CustomTextStyles.titleSmallOnPrimaryContainer,
                ),
              ),
              SizedBox(height: 7.v),
              Text(
                "0821 2103 1120",
                style: CustomTextStyles.bodySmallPrimary_1,
              ),
            ],
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.img18Primary,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(
            top: 10.v,
            bottom: 18.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSendMoney(BuildContext context) {
    return CustomElevatedButton(
      text: "Send Money",
      margin: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 40.v,
      ),
      buttonTextStyle: CustomTextStyles.titleMediumMedium,
    );
  }
}
