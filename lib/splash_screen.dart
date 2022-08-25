import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:woo_driver/res/theme/theme.dart';

import 'controller/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final splashScreen = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF07846),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            alignment: Alignment.bottomCenter,
            child: const Text(
              "LOGO",
              style: TextStyle(
                  fontSize: 50,
                  color: AppTheme.appBackgroundColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      )),
    );
  }
}
