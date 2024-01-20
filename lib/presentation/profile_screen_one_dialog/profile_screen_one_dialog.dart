import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';
import 'package:hades/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class ProfileScreenOneDialog extends StatelessWidget {
  const ProfileScreenOneDialog({Key? key})
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
            imagePath: ImageConstant.imgAccountCreatedPrimary,
            height: 217.adaptSize,
            width: 217.adaptSize,
          ),
          SizedBox(height: 35.v),
          Text(
            "Want to Logout ?",
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 15.v),
          Container(
            width: 218.h,
            margin: EdgeInsets.only(
              left: 29.h,
              right: 30.h,
            ),
            child: Text(
              "You will back to early app if you\nclick the logout button",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium!.copyWith(
                height: 1.71,
              ),
            ),
          ),
          SizedBox(height: 21.v),
          CustomElevatedButton(
            text: "Logout Now",
          ),
        ],
      ),
    );
  }
}
