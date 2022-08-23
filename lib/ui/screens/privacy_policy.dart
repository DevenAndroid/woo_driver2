import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../res/theme/theme.dart';
import 'app_routes/app_routes.dart';
import 'home.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize:
          Size.fromHeight(MediaQuery.of(context).size.height * .11),
          child: AppBar(
            centerTitle: true,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(20),
                )),
            systemOverlayStyle: const SystemUiOverlayStyle(
              // Status bar color
              statusBarColor: AppTheme.primaryColor,

              // Status bar brightness (optional)
              statusBarIconBrightness: Brightness.light,
              // For Android (dark icons)
              statusBarBrightness: Brightness.light, // For iOS (dark icons)
            ),
            backgroundColor: AppTheme.primaryColor,
            leading: GestureDetector(
              child: const Icon(Icons.arrow_back_ios),
              onTap: () {
                Get.toNamed(MyRoutes.moreScreen);
              },
            ),
            title: const Text(
              "Privacy Policy",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 20),
            ),
          )),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 45,
              ),

              Align(
                  alignment: Alignment.center,
                  child: Image.asset("assets/images/privacy.png")),
              const SizedBox(
                height: 50,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Icon(
                                Icons.circle,
                                size: 10,
                                color: AppTheme.primaryColor,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Expanded(
                              child: const Text(
                                "Lorem Ipsum Dolor Sit Amet,Consectetur Adipiscing Elit,",
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xff707070)),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        )
                      ],
                    );
                  })
            ],
          ),
        ),
      )
    );
  }
}
