import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';
import 'package:hades/presentation/pay_screen_scan_qr_page/pay_screen_scan_qr_page.dart';
import 'package:hades/widgets/app_bar/appbar_leading_image.dart';
import 'package:hades/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hades/widgets/app_bar/custom_app_bar.dart';

class PayScreenMyQrTabContainerScreen extends StatefulWidget {
  const PayScreenMyQrTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PayScreenMyQrTabContainerScreenState createState() =>
      PayScreenMyQrTabContainerScreenState();
}

class PayScreenMyQrTabContainerScreenState
    extends State<PayScreenMyQrTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 36.v),
              _buildTabview(context),
              SizedBox(
                height: 647.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    PayScreenScanQrPage(),
                    PayScreenScanQrPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 45.v,
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.img46,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 10.v,
          bottom: 11.v,
        ),
      ),
      centerTitle: true,
      title: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "Pay With ",
              style: CustomTextStyles.titleMediumff262626,
            ),
            TextSpan(
              text: "CHILDPAY",
              style: CustomTextStyles.titleMediumff262626_1,
            ),
          ],
        ),
        textAlign: TextAlign.left,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFrame2,
          margin: EdgeInsets.fromLTRB(24.h, 10.v, 24.h, 11.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 39.v,
      width: double.maxFinite,
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        labelColor: appTheme.blueGray100,
        unselectedLabelColor: theme.colorScheme.primary,
        indicatorColor: appTheme.gray10002,
        tabs: [
          Tab(
            child: Text(
              "Scan QR",
            ),
          ),
          Tab(
            child: Text(
              "My QR",
            ),
          ),
        ],
      ),
    );
  }
}
