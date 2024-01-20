import 'package:flutter/material.dart';import 'package:hades/core/app_export.dart';import 'package:hades/presentation/home_page/home_page.dart';import 'package:hades/presentation/profile_screen_page/profile_screen_page.dart';import 'package:hades/presentation/statistic_card_page/statistic_card_page.dart';import 'package:hades/widgets/custom_bottom_bar.dart';
// ignore_for_file: must_be_immutable
class HomeContainerScreen extends StatelessWidget {HomeContainerScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Navigator(key: navigatorKey, initialRoute: AppRoutes.homePage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.homePage; case BottomBarEnum.History: return "/"; case BottomBarEnum.Statistic: return AppRoutes.statisticCardPage; case BottomBarEnum.Profile: return AppRoutes.profileScreenPage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.homePage: return HomePage(); case AppRoutes.statisticCardPage: return StatisticCardPage(); case AppRoutes.profileScreenPage: return ProfileScreenPage(); default: return DefaultWidget();} } 
 }
