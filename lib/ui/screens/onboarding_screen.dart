import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:woo_driver/ui/widget/custom_button.dart';

import '../../res/theme/theme.dart';
import 'app_routes/app_routes.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: PageView(
                controller: _pageController,
                children: <Widget>[
                  Container(
                      child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/onboarding_screen_1.png',
                          height: MediaQuery.of(context).size.height * .3,
                        ),
                        const SizedBox(
                          height: 70,
                        ),
                        const Text(
                          "Order Online",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: AppTheme.primaryColor),
                          textAlign: TextAlign.center,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                              top: 35, bottom: 45, left: 20, right: 20),
                          child: Text(
                            "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, and get whole ipsum. ",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff242424),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  )),
                  Container(
                      child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Image.asset(
                          'assets/images/onboarding_screen_2.png',
                          height: MediaQuery.of(context).size.height * .3,
                        ),
                        const SizedBox(
                          height: 70,
                        ),
                        const Text(
                          "Fast Delivery",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: AppTheme.primaryColor),
                          textAlign: TextAlign.center,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                              top: 35, bottom: 45, left: 20, right: 20),
                          child: Text(
                            "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, and get whole ipsum. ",
                            style: TextStyle(
                              color: Color(0xff242424),
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                      ],
                    ),
                  )),
                  Container(
                      child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/onboarding_screen_3.png',
                          height: MediaQuery.of(context).size.height * .3,
                        ),
                        const SizedBox(
                          height: 70,
                        ),
                        const Text(
                          "Your Choice",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: AppTheme.primaryColor),
                          textAlign: TextAlign.center,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                              top: 35, bottom: 45, left: 20, right: 20),
                          child: Text(
                            "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, and get whole ipsum. ",
                            style: TextStyle(
                              color: Color(0xff242424),
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  )),
                ],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * .86,
              child: Column(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(4.0)),
                          color: AppTheme.primaryColor.withOpacity(.23)),
                      // width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(
                          horizontal:
                              MediaQuery.of(context).size.width * .5 - 51),
                      child: SmoothPageIndicator(
                          controller: _pageController, // PageController
                          count: 3,
                          effect: const SlideEffect(
                              spacing: 0.0,
                              radius: 4.0,
                              dotWidth: 34.0,
                              dotHeight: 8.0,
                              paintStyle: PaintingStyle.stroke,
                              strokeWidth: 1.5,
                              dotColor: Colors.transparent,
                              activeDotColor: AppTheme
                                  .primaryColor), // your preferred effect
                          onDotClicked: (index) {})),
                  SizedBox(
                    height: 35,
                  ),
                  CustomButton(
                    buttonText: "Next",
                    onPress: () {
                      if (_pageController.page == 2) {
                        Get.offAllNamed(MyRoutes.loginScreen);

                        print("object");
                      } else {
                        _pageController.nextPage(
                            duration: Duration(seconds: 1), curve: Curves.ease);
                      }
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
