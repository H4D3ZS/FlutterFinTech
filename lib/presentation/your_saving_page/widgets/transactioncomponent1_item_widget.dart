import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';

// ignore: must_be_immutable
class Transactioncomponent1ItemWidget extends StatelessWidget {
  const Transactioncomponent1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.outlineGray900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 48.adaptSize,
            width: 48.adaptSize,
            decoration: AppDecoration.fillPrimary.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder24,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgUserGray10002,
              height: 48.adaptSize,
              width: 48.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Buy Mini Vespa",
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 5.v),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Mercedez Benz 001",
                    style: CustomTextStyles.bodySmallOnPrimaryContainer,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          SizedBox(
            height: 48.adaptSize,
            width: 48.adaptSize,
            child: Stack(
              alignment: Alignment.centerRight,
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
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 7.h),
                    child: Text(
                      "100%",
                      style: CustomTextStyles.labelLargePrimary_1,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
