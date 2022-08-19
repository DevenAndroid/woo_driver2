import 'package:get/get.dart';
import 'package:woo_driver/splash_screen.dart';
import 'package:woo_driver/ui/screens/app_detail.dart';
import 'package:woo_driver/ui/screens/bank_details.dart';
import 'package:woo_driver/ui/screens/chat.dart';
import 'package:woo_driver/ui/screens/choose_vehicle.dart';
import 'package:woo_driver/ui/screens/contact_us.dart';
import 'package:woo_driver/ui/screens/delivery_complete.dart';
import 'package:woo_driver/ui/screens/document.dart';
import 'package:woo_driver/ui/screens/edit_profile.dart';
import 'package:woo_driver/ui/screens/go_to_pick_up.dart';
import 'package:woo_driver/ui/screens/job_preferences.dart';
import 'package:woo_driver/ui/screens/language.dart';
import 'package:woo_driver/ui/screens/more.dart';
import 'package:woo_driver/ui/screens/my_wallet.dart';
import 'package:woo_driver/ui/screens/otp_screen.dart';
import 'package:woo_driver/ui/screens/pick_up_location.dart';
import 'package:woo_driver/ui/screens/profile_detail.dart';
import 'package:woo_driver/ui/screens/wallet_history.dart';

import '../home.dart';
import '../log_in_screen.dart';
import '../privacy_policy.dart';
import '../profile.dart';
import '../sign_up_screen.dart';

class MyRoutes {
  static const String loginScreen = "/loginScreen";
  static const String getOTPScreen = "/getOTPScreen";
  static const String signUpScreen = "/signUpScreen";
  static const String appDetailScreen = "/appDetailScreen";
  static const String chooseVehicleScreen = "/chooseVehicleScreen";
  static const String jobPreferencesScreen = "/jobPreferencesScreen";
  static const String profileDetailScreen = "/profileDetailScreen";
  static const String bankDetailsScreen = "/bankDetailsScreen";
  static const String homeScreen = "/homeScreen";
  static const String goToPickUpScreen = "/goToPickUpScreen";
  static const String pickUpLocationScreen = "/pickUpLocationScreen";
  static const String deliveryCompleteScreen = "/deliveryCompleteScreen";
  static const String chatScreen = "/chatScreen";
  static const String myWalletScreen = "/myWalletScreen";
  static const String moreScreen = "/moreScreen";
  static const String profileHistoryScreen = "/profileHistoryScreen";
  static const String editProfileScreen = "/editProfileScreen";
  static const String documentScreen = "/documentScreen";
  static const String languageScreen = "/languageScreen";
  static const String privacyPolicyScreen = "/privacyPolicyScreen";
  static const String contactUsScreen = "/contactUsScreen";
  static const String walletHistoryScreen = "/walletHistoryScreen";



  static var routes = [
    GetPage(name: "/", page: ()=> SplashScreen()),
    GetPage(name: MyRoutes.loginScreen, page: ()=> const LogInScreen()),
    GetPage(name: MyRoutes.getOTPScreen, page: ()=> const OtpScreen()),
    GetPage(name: MyRoutes.signUpScreen, page: ()=> const SignUpScreen()),
    GetPage(name: MyRoutes.appDetailScreen, page: ()=> const AppDetailScreen()),
    GetPage(name: MyRoutes.chooseVehicleScreen, page: ()=> const ChooseVehicleScreen()),
    GetPage(name: MyRoutes.jobPreferencesScreen, page: ()=> const JobPreferencesScreen()),
    GetPage(name: MyRoutes.profileDetailScreen, page: ()=> const ProfileDetailScreen()),
    GetPage(name: MyRoutes.bankDetailsScreen, page: ()=> const BankDetailsScreen()),
    GetPage(name: MyRoutes.homeScreen, page: ()=> const HomeScreen()),
    GetPage(name: MyRoutes.goToPickUpScreen, page: ()=> const GoToPickUpScreen()),
    GetPage(name: MyRoutes.pickUpLocationScreen, page: ()=> const PickUpLocationScreen()),
    GetPage(name: MyRoutes.deliveryCompleteScreen, page: ()=> const DeliveryCompleteScreen()),
    GetPage(name: MyRoutes.chatScreen, page: ()=> const ChatScreen()),
    GetPage(name: MyRoutes.myWalletScreen, page: ()=> const MyWalletScreen()),
    GetPage(name: MyRoutes.moreScreen, page: ()=> const MoreScreen()),
    GetPage(name: MyRoutes.profileHistoryScreen, page: ()=> const ProfileScreen()),
    GetPage(name: MyRoutes.editProfileScreen, page: ()=> const EditProfileScreen()),
    GetPage(name: MyRoutes.documentScreen, page: ()=> const DocumentScreen()),
    GetPage(name: MyRoutes.languageScreen, page: ()=> const LanguageScreen()),
    GetPage(name: MyRoutes.privacyPolicyScreen, page: ()=> const PrivacyPolicyScreen()),
    GetPage(name: MyRoutes.contactUsScreen, page: ()=> const ContactUsScreen()),
    GetPage(name: MyRoutes.walletHistoryScreen, page: ()=> const WalletHistoryScreen()),
  ];


}