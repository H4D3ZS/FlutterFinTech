import '../your_card_screen/widgets/paymentcard_item_widget.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';
import 'package:hades/widgets/app_bar/appbar_leading_image.dart';
import 'package:hades/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:hades/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hades/widgets/app_bar/custom_app_bar.dart';
import 'package:hades/widgets/custom_outlined_button.dart';

class YourCardScreen extends StatelessWidget {
  const YourCardScreen({Key? key})
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
            vertical: 21.v,
          ),
          child: Column(
            children: [
              _buildPaymentCard(context),
              SizedBox(height: 24.v),
              DottedBorder(
                color: theme.colorScheme.primary,
                padding: EdgeInsets.only(
                  left: 1.h,
                  top: 1.v,
                  right: 1.h,
                  bottom: 1.v,
                ),
                strokeWidth: 1.h,
                radius: Radius.circular(10),
                borderType: BorderType.RRect,
                dashPattern: [
                  4,
                  4,
                ],
                child: CustomOutlinedButton(
                  text: "Add Credit Card",
                  leftIcon: Container(
                    margin: EdgeInsets.only(right: 8.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.img68,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                  ),
                  buttonStyle: CustomButtonStyles.outlinePrimaryTL10,
                  buttonTextStyle: CustomTextStyles.titleMediumPrimary,
                ),
              ),
              SizedBox(height: 5.v),
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
      title: AppbarSubtitleFive(
        text: "Your Card",
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
  Widget _buildPaymentCard(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 16.v,
        );
      },
      itemCount: 2,
      itemBuilder: (context, index) {
        return PaymentcardItemWidget();
      },
    );
  }
}
