import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgLayer1,
                height: 120.v,
                width: 121.h,
              ),
              SizedBox(height: 19.v),
              Text(
                "SHIELDPAY",
                style: CustomTextStyles.displayMediumWhiteA700,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
