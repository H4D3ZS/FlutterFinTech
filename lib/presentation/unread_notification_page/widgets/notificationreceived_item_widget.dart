import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';

// ignore: must_be_immutable
class NotificationreceivedItemWidget extends StatelessWidget {
  const NotificationreceivedItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.v),
      decoration: AppDecoration.outlineGray9001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgCloseDeepPurple5001,
            height: 48.v,
            width: 56.h,
            margin: EdgeInsets.only(bottom: 22.v),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 223.h,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "You have received money from",
                          style: theme.textTheme.bodySmall,
                        ),
                        TextSpan(
                          text: " ",
                        ),
                        TextSpan(
                          text: "Dean\n",
                          style: theme.textTheme.labelLarge,
                        ),
                        TextSpan(
                          text: "Williamson",
                          style: theme.textTheme.labelLarge,
                        ),
                        TextSpan(
                          text: " ",
                        ),
                        TextSpan(
                          text: "+76.00",
                          style: theme.textTheme.labelLarge,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 5.v),
                Text(
                  "10.42 AM",
                  style: CustomTextStyles.bodySmallGray500_1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
