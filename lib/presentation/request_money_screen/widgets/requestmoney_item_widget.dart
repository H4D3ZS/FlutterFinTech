import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';
import 'package:hades/widgets/custom_elevated_button.dart';
import 'package:hades/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class RequestmoneyItemWidget extends StatelessWidget {
  const RequestmoneyItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.outlineGray900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPlayIndigo100,
            height: 48.adaptSize,
            width: 48.adaptSize,
            margin: EdgeInsets.only(
              top: 5.v,
              bottom: 45.v,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 1.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Yulisa Meyun",
                            style: theme.textTheme.titleSmall,
                          ),
                          SizedBox(height: 7.v),
                          Text(
                            "Tuesday, 23 Nov 2021",
                            style: CustomTextStyles.bodySmallPrimary_1,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 11.v,
                          bottom: 13.v,
                        ),
                        child: Text(
                          "487.00",
                          style: CustomTextStyles.titleSmallSemiBold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15.v),
                  Row(
                    children: [
                      CustomElevatedButton(
                        height: 34.v,
                        width: 80.h,
                        text: "Accept",
                        buttonStyle: CustomButtonStyles.fillPrimaryTL6,
                        buttonTextStyle: CustomTextStyles.labelLargeWhiteA700,
                      ),
                      CustomOutlinedButton(
                        height: 34.v,
                        width: 80.h,
                        text: "Decline",
                        margin: EdgeInsets.only(left: 10.h),
                        buttonStyle: CustomButtonStyles.outlinePrimaryTL6,
                        buttonTextStyle: CustomTextStyles.labelLargePrimary_1,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
