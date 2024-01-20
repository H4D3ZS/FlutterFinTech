import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';

// ignore: must_be_immutable
class PaymentcardItemWidget extends StatelessWidget {
  const PaymentcardItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 23.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup60,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              ),
            ],
          ),
          SizedBox(height: 24.v),
          Text(
            "2298 1268 3398 9874",
            style: CustomTextStyles.titleMediumGray5002,
          ),
          SizedBox(height: 57.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "2885.00",
                style: CustomTextStyles.titleLargePoppinsGray5002,
              ),
              Padding(
                padding: EdgeInsets.only(top: 9.v),
                child: Text(
                  "12/24",
                  style: CustomTextStyles.bodyMediumWhiteA700_1,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
