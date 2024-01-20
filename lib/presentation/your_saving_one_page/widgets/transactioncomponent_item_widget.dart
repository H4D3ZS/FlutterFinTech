import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';

// ignore: must_be_immutable
class TransactioncomponentItemWidget extends StatelessWidget {
  const TransactioncomponentItemWidget({Key? key})
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
          Card(
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
                  "Buy Playstation",
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 5.v),
                Text(
                  "Slim 1 TB 56 Games",
                  style: CustomTextStyles.bodySmallOnPrimaryContainer,
                ),
              ],
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
    );
  }
}
