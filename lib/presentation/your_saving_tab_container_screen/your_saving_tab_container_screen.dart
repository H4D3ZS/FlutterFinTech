import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';
import 'package:hades/presentation/your_saving_one_page/your_saving_one_page.dart';
import 'package:hades/presentation/your_saving_page/your_saving_page.dart';
import 'package:hades/widgets/app_bar/appbar_leading_image.dart';
import 'package:hades/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:hades/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hades/widgets/app_bar/custom_app_bar.dart';

class YourSavingTabContainerScreen extends StatefulWidget {
  const YourSavingTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  YourSavingTabContainerScreenState createState() =>
      YourSavingTabContainerScreenState();
}

class YourSavingTabContainerScreenState
    extends State<YourSavingTabContainerScreen> with TickerProviderStateMixin {
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
              SizedBox(height: 27.v),
              _buildTabview(context),
              SizedBox(
                height: 654.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    YourSavingOnePage(),
                    YourSavingPage(),
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
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.img46,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 10.v,
          bottom: 12.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleFive(
        text: "Your Saving",
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFrame2,
          margin: EdgeInsets.fromLTRB(24.h, 10.v, 24.h, 12.v),
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
        labelColor: theme.colorScheme.primary,
        unselectedLabelColor: appTheme.blueGray100,
        indicatorColor: theme.colorScheme.primary,
        tabs: [
          Tab(
            child: Text(
              "On Progress",
            ),
          ),
          Tab(
            child: Text(
              "Done",
            ),
          ),
        ],
      ),
    );
  }
}
