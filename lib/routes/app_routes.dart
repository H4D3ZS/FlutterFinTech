import 'package:flutter/material.dart';
import 'package:hades/presentation/splash_screen/splash_screen.dart';
import 'package:hades/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:hades/presentation/onboarding_two_screen/onboarding_two_screen.dart';
import 'package:hades/presentation/onboarding_three_screen/onboarding_three_screen.dart';
import 'package:hades/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:hades/presentation/create_password_screen/create_password_screen.dart';
import 'package:hades/presentation/confirm_password_screen/confirm_password_screen.dart';
import 'package:hades/presentation/phone_number_one_screen/phone_number_one_screen.dart';
import 'package:hades/presentation/phone_number_screen/phone_number_screen.dart';
import 'package:hades/presentation/verify_account_screen/verify_account_screen.dart';
import 'package:hades/presentation/account_created_screen/account_created_screen.dart';
import 'package:hades/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:hades/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:hades/presentation/email_address_screen/email_address_screen.dart';
import 'package:hades/presentation/account_one_screen/account_one_screen.dart';
import 'package:hades/presentation/help_center_screen/help_center_screen.dart';
import 'package:hades/presentation/personal_screen/personal_screen.dart';
import 'package:hades/presentation/your_saving_tab_container_screen/your_saving_tab_container_screen.dart';
import 'package:hades/presentation/home_container_screen/home_container_screen.dart';
import 'package:hades/presentation/all_notification_tab_container_screen/all_notification_tab_container_screen.dart';
import 'package:hades/presentation/request_money_screen/request_money_screen.dart';
import 'package:hades/presentation/pay_screen_my_qr_tab_container_screen/pay_screen_my_qr_tab_container_screen.dart';
import 'package:hades/presentation/top_up_screen/top_up_screen.dart';
import 'package:hades/presentation/your_card_screen/your_card_screen.dart';
import 'package:hades/presentation/add_new_card_screen/add_new_card_screen.dart';
import 'package:hades/presentation/send_money_two_screen/send_money_two_screen.dart';
import 'package:hades/presentation/send_money_screen/send_money_screen.dart';
import 'package:hades/presentation/send_money_one_screen/send_money_one_screen.dart';
import 'package:hades/presentation/send_money_success_screen/send_money_success_screen.dart';
import 'package:hades/presentation/send_history_tab_container_screen/send_history_tab_container_screen.dart';
import 'package:hades/presentation/email_address_one_screen/email_address_one_screen.dart';
import 'package:hades/presentation/personal_one_screen/personal_one_screen.dart';
import 'package:hades/presentation/account_screen/account_screen.dart';
import 'package:hades/presentation/password_screen/password_screen.dart';
import 'package:hades/presentation/help_center_one_screen/help_center_one_screen.dart';
import 'package:hades/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String createPasswordScreen = '/create_password_screen';

  static const String confirmPasswordScreen = '/confirm_password_screen';

  static const String phoneNumberOneScreen = '/phone_number_one_screen';

  static const String phoneNumberScreen = '/phone_number_screen';

  static const String verifyAccountScreen = '/verify_account_screen';

  static const String accountCreatedScreen = '/account_created_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String emailAddressScreen = '/email_address_screen';

  static const String accountOneScreen = '/account_one_screen';

  static const String helpCenterScreen = '/help_center_screen';

  static const String personalScreen = '/personal_screen';

  static const String yourSavingOnePage = '/your_saving_one_page';

  static const String yourSavingPage = '/your_saving_page';

  static const String yourSavingTabContainerScreen =
      '/your_saving_tab_container_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String allNotificationPage = '/all_notification_page';

  static const String allNotificationTabContainerScreen =
      '/all_notification_tab_container_screen';

  static const String unreadNotificationPage = '/unread_notification_page';

  static const String requestMoneyScreen = '/request_money_screen';

  static const String payScreenScanQrPage = '/pay_screen_scan_qr_page';

  static const String payScreenMyQrPage = '/pay_screen_my_qr_page';

  static const String payScreenMyQrTabContainerScreen =
      '/pay_screen_my_qr_tab_container_screen';

  static const String topUpScreen = '/top_up_screen';

  static const String yourCardScreen = '/your_card_screen';

  static const String statisticCardPage = '/statistic_card_page';

  static const String addNewCardScreen = '/add_new_card_screen';

  static const String sendMoneyTwoScreen = '/send_money_two_screen';

  static const String sendMoneyScreen = '/send_money_screen';

  static const String sendMoneyOneScreen = '/send_money_one_screen';

  static const String sendMoneySuccessScreen = '/send_money_success_screen';

  static const String allHistoryPage = '/all_history_page';

  static const String sendHistoryPage = '/send_history_page';

  static const String sendHistoryTabContainerScreen =
      '/send_history_tab_container_screen';

  static const String requestHistoryPage = '/request_history_page';

  static const String profileScreenPage = '/profile_screen_page';

  static const String emailAddressOneScreen = '/email_address_one_screen';

  static const String personalOneScreen = '/personal_one_screen';

  static const String accountScreen = '/account_screen';

  static const String passwordScreen = '/password_screen';

  static const String helpCenterOneScreen = '/help_center_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    onboardingOneScreen: (context) => OnboardingOneScreen(),
    onboardingTwoScreen: (context) => OnboardingTwoScreen(),
    onboardingThreeScreen: (context) => OnboardingThreeScreen(),
    signUpScreen: (context) => SignUpScreen(),
    createPasswordScreen: (context) => CreatePasswordScreen(),
    confirmPasswordScreen: (context) => ConfirmPasswordScreen(),
    phoneNumberOneScreen: (context) => PhoneNumberOneScreen(),
    phoneNumberScreen: (context) => PhoneNumberScreen(),
    verifyAccountScreen: (context) => VerifyAccountScreen(),
    accountCreatedScreen: (context) => AccountCreatedScreen(),
    signInScreen: (context) => SignInScreen(),
    forgotPasswordScreen: (context) => ForgotPasswordScreen(),
    emailAddressScreen: (context) => EmailAddressScreen(),
    accountOneScreen: (context) => AccountOneScreen(),
    helpCenterScreen: (context) => HelpCenterScreen(),
    personalScreen: (context) => PersonalScreen(),
    yourSavingTabContainerScreen: (context) => YourSavingTabContainerScreen(),
    homeContainerScreen: (context) => HomeContainerScreen(),
    allNotificationTabContainerScreen: (context) =>
        AllNotificationTabContainerScreen(),
    requestMoneyScreen: (context) => RequestMoneyScreen(),
    payScreenMyQrTabContainerScreen: (context) =>
        PayScreenMyQrTabContainerScreen(),
    topUpScreen: (context) => TopUpScreen(),
    yourCardScreen: (context) => YourCardScreen(),
    addNewCardScreen: (context) => AddNewCardScreen(),
    sendMoneyTwoScreen: (context) => SendMoneyTwoScreen(),
    sendMoneyScreen: (context) => SendMoneyScreen(),
    sendMoneyOneScreen: (context) => SendMoneyOneScreen(),
    sendMoneySuccessScreen: (context) => SendMoneySuccessScreen(),
    sendHistoryTabContainerScreen: (context) => SendHistoryTabContainerScreen(),
    emailAddressOneScreen: (context) => EmailAddressOneScreen(),
    personalOneScreen: (context) => PersonalOneScreen(),
    accountScreen: (context) => AccountScreen(),
    passwordScreen: (context) => PasswordScreen(),
    helpCenterOneScreen: (context) => HelpCenterOneScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
