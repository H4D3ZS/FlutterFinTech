import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';
import 'package:hades/presentation/all_history_page/all_history_page.dart';
import 'package:hades/presentation/home_page/home_page.dart';
import 'package:hades/presentation/profile_screen_page/profile_screen_page.dart';
import 'package:hades/presentation/request_history_page/request_history_page.dart';
import 'package:hades/presentation/send_history_page/send_history_page.dart';
import 'package:hades/presentation/statistic_card_page/statistic_card_page.dart';
import 'package:hades/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:hades/widgets/app_bar/custom_app_bar.dart';
import 'package:hades/widgets/custom_bottom_bar.dart';

class SendHistoryTabContainerScreen extends StatefulWidget {
  const SendHistoryTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SendHistoryTabContainerScreenState createState() =>
      SendHistoryTabContainerScreenState();
}

class SendHistoryTabContainerScreenState
    extends State<SendHistoryTabContainerScreen> with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
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
              SizedBox(height: 39.v),
              _buildTabview(context),
              SizedBox(
                height: 568.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    AllHistoryPage(),
                    SendHistoryPage(),
                    RequestHistoryPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 47.v,
      centerTitle: true,
      title: AppbarSubtitleFive(
        text: "History",
      ),
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
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: appTheme.blueGray100,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        indicatorColor: theme.colorScheme.primary,
        tabs: [
          Tab(
            child: Text(
              "All",
            ),
          ),
          Tab(
            child: Text(
              "Send",
            ),
          ),
          Tab(
            child: Text(
              "Request",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.History:
        return "/";
      case BottomBarEnum.Statistic:
        return AppRoutes.statisticCardPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profileScreenPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.statisticCardPage:
        return StatisticCardPage();
      case AppRoutes.profileScreenPage:
        return ProfileScreenPage();
      default:
        return DefaultWidget();
    }
  }
}
