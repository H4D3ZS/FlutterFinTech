import 'package:flutter/material.dart';
import 'package:hades/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash Screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign Up",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Create Password",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.createPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Confirm password",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.confirmPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Phone Number One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.phoneNumberOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Phone Number",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.phoneNumberScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Verify Account",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.verifyAccountScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Account Created",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.accountCreatedScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign In",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Forgot Password",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.forgotPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Email address",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.emailAddressScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Account One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.accountOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Help Center",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.helpCenterScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Personal",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.personalScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Your Saving - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.yourSavingTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "All Notification - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.allNotificationTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Request Money",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.requestMoneyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Pay Screen My QR - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.payScreenMyQrTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Top Up",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.topUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Your Card",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.yourCardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add New Card",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.addNewCardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Send Money Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.sendMoneyTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Send Money",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.sendMoneyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Send Money One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.sendMoneyOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Send Money Success",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.sendMoneySuccessScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Send History - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.sendHistoryTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Email Address One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.emailAddressOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Personal One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.personalOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Account",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.accountScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Password",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.passwordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Help Center One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.helpCenterOneScreen),
                        ),
                      ],
                    ),
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
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
