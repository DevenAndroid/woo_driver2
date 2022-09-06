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
      Get.off(const OnboardingScreen());
    });
  }
}
