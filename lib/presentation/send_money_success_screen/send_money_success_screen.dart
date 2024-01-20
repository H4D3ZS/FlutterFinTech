import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:hades/core/app_export.dart';
import 'package:hades/widgets/custom_elevated_button.dart';
import 'package:hades/widgets/custom_icon_button.dart';

class SendMoneySuccessScreen extends StatelessWidget {
  const SendMoneySuccessScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 32.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 34.v),
              CustomIconButton(
                height: 64.adaptSize,
                width: 64.adaptSize,
                padding: EdgeInsets.all(19.h),
                decoration: IconButtonStyleHelper.fillPrimaryTL32,
                child: CustomImageView(
                  imagePath: ImageConstant.imgCheckmark,
                ),
              ),
              SizedBox(height: 17.v),
              Text(
                "Succesfully",
                style: CustomTextStyles
                    .titleLargePoppinsOnPrimaryContainerSemiBold,
              ),
              SizedBox(height: 38.v),
              Container(
                padding: EdgeInsets.all(24.h),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: fs.Svg(
                      ImageConstant.imgReceipt,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgPlay48x48,
                      height: 56.adaptSize,
                      width: 56.adaptSize,
                    ),
                    SizedBox(height: 15.v),
                    Text(
                      "Vina Andini",
                      style: CustomTextStyles.titleSmallOnPrimaryContainer,
                    ),
                    SizedBox(height: 5.v),
                    Text(
                      "0821 2103 1120",
                      style: CustomTextStyles.bodySmallGray500_1,
                    ),
                    SizedBox(height: 23.v),
                    _buildTotal(
                      context,
                      totalText: "Amount",
                      priceText: " 30.00",
                    ),
                    SizedBox(height: 15.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 2.v),
                          child: Text(
                            "Admin fee ",
                            style: CustomTextStyles.bodySmallGray500_1,
                          ),
                        ),
                        Text(
                          "50",
                          style: CustomTextStyles.titleSmallOnPrimaryContainer,
                        ),
                      ],
                    ),
                    SizedBox(height: 23.v),
                    Divider(
                      color: theme.colorScheme.primaryContainer,
                    ),
                    SizedBox(height: 14.v),
                    _buildTotal(
                      context,
                      totalText: "Total",
                      priceText: "60.50",
                    ),
                    SizedBox(height: 15.v),
                    Divider(
                      color: theme.colorScheme.primaryContainer,
                    ),
                    SizedBox(height: 39.v),
                    BarcodeWidget(
                      data: '1234567890',
                      barcode: Barcode.code39(),
                      drawText: false,
                      height: 64.v,
                      width: 279.h,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBackToHome(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildBackToHome(BuildContext context) {
    return CustomElevatedButton(
      text: "Back To Home",
      margin: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 40.v,
      ),
      buttonTextStyle: CustomTextStyles.titleMediumMedium,
    );
  }

  /// Common widget
  Widget _buildTotal(
    BuildContext context, {
    required String totalText,
    required String priceText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Text(
            totalText,
            style: CustomTextStyles.bodySmallGray500_1.copyWith(
              color: appTheme.gray500,
            ),
          ),
        ),
        Text(
          priceText,
          style: CustomTextStyles.titleSmallSemiBold.copyWith(
            color: theme.colorScheme.primary,
          ),
        ),
      ],
    );
  }
}
