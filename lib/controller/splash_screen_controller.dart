import 'package:get/get.dart';

import '../ui/screens/onboarding_screen.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    // _getClientInformation();
    Future.delayed(const Duration(seconds: 3)).then((value) async {
      // Get.offAndToNamed(MyRouter.customBottomBar);
      // Get.to(AllHostsScreen());
      Get.to(OnboardingScreen());
    });
  }

// Future<void> _getClientInformation() async {
//   ClientInformation? info;
//   try {
//     info = await ClientInformation.fetch();
//   } on PlatformException {
//     log('Failed to get client information');
//   }
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   prefs.setString('deviceId', info!.deviceId.toString());
// }
}
