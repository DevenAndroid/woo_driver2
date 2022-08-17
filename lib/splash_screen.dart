import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'controller/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
   SplashScreen({Key? key}) : super(key: key);

   final splashScreen = Get.put(SplashScreenController());

  // final _controller = Get.put(GetHomeController());
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
            // child: Image.asset(
            //   AppAssets.logoWelcome,
            //   width: MediaQuery.of(context).size.width * 0.6,
            // ),
            child: const Text(
              "LOGO",
              style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          // Image.asset(
          //   AppAssets.splashBg,
          //   fit: BoxFit.cover,
          //   width: MediaQuery.of(context).size.width,
          // ),
        ],
      )),
    );
  }
}
