import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';

// ignore: must_be_immutable
class Transactioncomponent3ItemWidget extends StatelessWidget {
  const Transactioncomponent3ItemWidget({Key? key})
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
              imagePath: ImageConstant.imgUserIndigo100,
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
                  "Leandro Sucipto",
                  style: CustomTextStyles.titleSmallOnPrimaryContainer,
                ),
                SizedBox(height: 5.v),
                Text(
                  "12 Oct 2021",
                  style: CustomTextStyles.bodySmallPrimary_1,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 13.v),
            child: Text(
              "+230.00",
              style: theme.textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }
}
