import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';
import 'package:hades/presentation/all_notification_page/all_notification_page.dart';
import 'package:hades/presentation/unread_notification_page/unread_notification_page.dart';
import 'package:hades/widgets/app_bar/appbar_leading_image.dart';
import 'package:hades/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:hades/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hades/widgets/app_bar/custom_app_bar.dart';

class AllNotificationTabContainerScreen extends StatefulWidget {
  const AllNotificationTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AllNotificationTabContainerScreenState createState() =>
      AllNotificationTabContainerScreenState();
}

class AllNotificationTabContainerScreenState
    extends State<AllNotificationTabContainerScreen>
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
              SizedBox(height: 29.v),
              _buildTabview(context),
              Expanded(
                child: SizedBox(
                  height: 654.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      UnreadNotificationPage(),
                      AllNotificationPage(),
                    ],
                  ),
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
      height: 43.v,
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.img46,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 10.v,
          bottom: 9.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleFive(
        text: "Notification",
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFrame2,
          margin: EdgeInsets.fromLTRB(24.h, 10.v, 24.h, 9.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 40.v,
      width: double.maxFinite,
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        labelColor: appTheme.blueGray100,
        unselectedLabelColor: theme.colorScheme.primary,
        indicatorColor: appTheme.gray20001,
        tabs: [
          Tab(
            child: Text(
              "All Notification",
            ),
          ),
          Tab(
            child: Text(
              "Unread",
            ),
          ),
        ],
      ),
    );
  }
}
