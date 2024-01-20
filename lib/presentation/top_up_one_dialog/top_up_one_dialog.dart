import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';
import 'package:hades/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class TopUpOneDialog extends StatelessWidget {
  const TopUpOneDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327.h,
      padding: EdgeInsets.all(24.h),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 16.v),
          CustomImageView(
            imagePath: ImageConstant.imgAccountCreated,
            height: 217.adaptSize,
            width: 217.adaptSize,
          ),
          SizedBox(height: 34.v),
          Text(
            "Top Up Successfully",
            style: CustomTextStyles.headlineSmallPrimary,
          ),
          SizedBox(height: 16.v),
          Container(
            width: 252.h,
            margin: EdgeInsets.only(
              left: 14.h,
              right: 13.h,
            ),
            child: Text(
              "The amount  will be reflected in your\naccount with in few minutes",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyMediumPrimary.copyWith(
                height: 1.71,
              ),
            ),
          ),
          SizedBox(height: 21.v),
          CustomElevatedButton(
            text: "Continue",
          ),
        ],
      ),
    );
  }
}
