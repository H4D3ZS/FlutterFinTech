import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';

// ignore: must_be_immutable
class Paymentcard1ItemWidget extends StatelessWidget {
  const Paymentcard1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        decoration: AppDecoration.fillPrimary.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 23.v,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup60,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 1.v,
                      bottom: 4.v,
                    ),
                    child: Text(
                      "Payment Card",
                      style: CustomTextStyles.bodySmallWhiteA700,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgContrast,
                    height: 24.v,
                    width: 40.h,
                    margin: EdgeInsets.only(left: 129.h),
                  ),
                ],
              ),
              SizedBox(height: 24.v),
              Text(
                "2298 1268 3398 9874",
                style: CustomTextStyles.titleMediumGray5002,
              ),
              SizedBox(height: 49.v),
              Row(
                children: [
                  Text(
                    "2885.00",
                    style: CustomTextStyles.titleLargePoppinsGray5002,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 130.h,
                      top: 9.v,
                    ),
                    child: Text(
                      "12/24",
                      style: CustomTextStyles.bodyMediumWhiteA700_1,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
