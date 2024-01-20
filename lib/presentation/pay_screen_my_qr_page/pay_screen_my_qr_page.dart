import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';
import 'package:qr_flutter/qr_flutter.dart';

// ignore_for_file: must_be_immutable
class PayScreenMyQrPage extends StatefulWidget {
  const PayScreenMyQrPage({Key? key})
      : super(
          key: key,
        );

  @override
  PayScreenMyQrPageState createState() => PayScreenMyQrPageState();
}

class PayScreenMyQrPageState extends State<PayScreenMyQrPage>
    with AutomaticKeepAliveClientMixin<PayScreenMyQrPage> {
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
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.h,
                        vertical: 19.v,
                      ),
                      decoration: AppDecoration.fillPrimary,
                      child: QrImageView(
                        data: 'https://www.google.com',
                        size: 201.v,
                      ),
                    ),
                    SizedBox(height: 16.v),
                    Text(
                      "@alexandermichael",
                      style: theme.textTheme.titleSmall,
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
