import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:woo_driver/ui/screens/app_routes/app_routes.dart';

import '../../res/theme/theme.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
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
              // leading: GestureDetector(
              //   child: const Icon(Icons.arrow_back_ios),
              //   onTap: () {
              //     Get.toNamed(MyRoutes.bottomNavBarScreen);
              //   },
              // ),
              title: const Text(
                "LOGO",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 28),
              ),
            )),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              GestureDetector(
                onTap: () => Get.toNamed(MyRoutes.profileHistoryScreen),
                child: Container(
                  margin: const EdgeInsets.only(top: 15),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: AppTheme.appBackgroundColor,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffe3dfdf),
                          blurRadius: 10.0,
                        ),
                      ]),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.person_outline_rounded,
                        color: AppTheme.primaryColor,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "|",
                        style: TextStyle(
                          fontSize: 22,
                          color: AppTheme.dividerColor,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Profile",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Expanded(
                        child: SizedBox(),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 14,
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Get.toNamed(MyRoutes.documentScreen),
                child: Container(
                  margin: const EdgeInsets.only(top: 15),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: AppTheme.appBackgroundColor,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffe3dfdf),
                          blurRadius: 10.0,
                        ),
                      ]),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.text_snippet_outlined,
                        color: AppTheme.primaryColor,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "|",
                        style: TextStyle(
                          fontSize: 22,
                          color: AppTheme.dividerColor,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Document",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Expanded(
                        child: SizedBox(),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 14,
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Get.toNamed(MyRoutes.languageScreen),
                child: Container(
                  margin: const EdgeInsets.only(top: 15),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: AppTheme.appBackgroundColor,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffe3dfdf),
                          blurRadius: 10.0,
                        ),
                      ]),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/language.png",
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "|",
                        style: TextStyle(
                          fontSize: 22,
                          color: AppTheme.dividerColor,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Language",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 14,
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Get.toNamed(MyRoutes.privacyPolicyScreen),
                child: Container(
                  margin: const EdgeInsets.only(top: 15),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: AppTheme.appBackgroundColor,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffe3dfdf),
                          blurRadius: 10.0,
                        ),
                      ]),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.lock_open_rounded,
                        color: AppTheme.primaryColor,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "|",
                        style: TextStyle(
                          fontSize: 22,
                          color: AppTheme.dividerColor,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Privacy Policy",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Expanded(
                        child: SizedBox(),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 14,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 2,
                color: AppTheme.dividerColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      showMaterialModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                topLeft: Radius.circular(20))),
                        builder: (context) => Container(
                          height: MediaQuery.of(context).size.height * .2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  margin: const EdgeInsets.all(10),
                                  child: const Text(
                                    "Share With",
                                    style: TextStyle(fontSize: 14),
                                  )),
                              const SizedBox(
                                height: 15,
                              ),
                              Container(
                                margin: const EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset("assets/images/facebook.png"),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Image.asset("assets/images/insta.png"),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Image.asset("assets/images/twitter.png"),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Image.asset("assets/images/whatsApp.png"),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Image.asset("assets/images/linkdin.png"),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 15),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: AppTheme.appBackgroundColor,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0xffe3dfdf),
                              blurRadius: 10.0,
                            ),
                          ]),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.share,
                            color: AppTheme.primaryColor,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Invite friends",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Get.toNamed(MyRoutes.contactUsScreen),
                    child: Container(
                      margin: const EdgeInsets.only(top: 15),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: AppTheme.appBackgroundColor,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0xffe3dfdf),
                              blurRadius: 10.0,
                            ),
                          ]),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.phone,
                            color: AppTheme.primaryColor,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Contact us",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
