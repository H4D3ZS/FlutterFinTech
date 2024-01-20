import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';

// ignore: must_be_immutable
class NotificationItemWidget extends StatelessWidget {
  const NotificationItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.outlineGray9001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgCloseDeepPurple5001,
            height: 48.v,
            width: 56.h,
            margin: EdgeInsets.only(bottom: 22.v),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 2.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 218.h,
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
                            text: "Dodi\n",
                            style: theme.textTheme.labelLarge,
                          ),
                          TextSpan(
                            text: "Taison",
                            style: theme.textTheme.labelLarge,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: "+32.00",
                            style: theme.textTheme.labelLarge,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Text(
                    "11.00 AM",
                    style: CustomTextStyles.bodySmallGray500_1,
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
