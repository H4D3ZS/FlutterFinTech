import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';
import 'package:hades/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class PayScreenScanQrPage extends StatefulWidget {
  const PayScreenScanQrPage({Key? key})
      : super(
          key: key,
        );

  @override
  PayScreenScanQrPageState createState() => PayScreenScanQrPageState();
}

class PayScreenScanQrPageState extends State<PayScreenScanQrPage>
    with AutomaticKeepAliveClientMixin<PayScreenScanQrPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 121.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 67.h),
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgScanBarcode,
                      height: 240.v,
                      width: 241.h,
                    ),
                    SizedBox(height: 24.v),
                    Text(
                      "Scan QR Code here",
                      style: CustomTextStyles.bodyMediumPrimary,
                    ),
                    SizedBox(height: 128.v),
                    CustomIconButton(
                      height: 72.adaptSize,
                      width: 72.adaptSize,
                      padding: EdgeInsets.all(20.h),
                      decoration: IconButtonStyleHelper.fillPrimary,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgFrame886,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
