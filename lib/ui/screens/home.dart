import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:im_stepper/stepper.dart';
import 'package:woo_driver/ui/widget/custom_bottom_navigationbar.dart';

import '../../res/theme/theme.dart';
import '../widget/custom_button.dart';
import 'app_routes/app_routes.dart';
import 'job_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSwitched = false;
  var textValue = 'Switch is OFF';

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
    }
  }

  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = const CameraPosition(
    target: LatLng(26.9112472, 75.7296486),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = const CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(26.9112472, 75.7296486),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  int activeStep = 2;

  int upperBound = 1;

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
              child: const Icon(Icons.menu),
              onTap: () {
                Get.to(const JobPreferencesScreen());
              },
            ),
            title: const Text(
              "Home",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 16),
            ),
            actions: [
              Container(
                padding: const EdgeInsets.only(right: 10),
                child: GestureDetector(
                  child: const Icon(Icons.notifications),
                  onTap: () {},
                ),
              ),
            ],
          )),
      bottomNavigationBar: CustomBottomNavigationBar(),
      // BottomAppBar(
      //     shape: const AutomaticNotchedShape(RoundedRectangleBorder(
      //         borderRadius: BorderRadius.only(
      //       topLeft: Radius.circular(15),
      //       topRight: Radius.circular(15),
      //     ))),
      //     color: AppTheme.primaryColor,
      //     child: Container(
      //       margin: const EdgeInsets.only(right: 15),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: <Widget>[
      //           Image.asset(
      //             "assets/images/home.png",
      //             color: AppTheme.appBackgroundColor,
      //           ),
      //           Image.asset(
      //             "assets/images/wallet.png",
      //             color: AppTheme.appBackgroundColor,
      //           ),
      //           Image.asset(
      //             "assets/images/history.png",
      //             color: AppTheme.appBackgroundColor,
      //           ),
      //           Image.asset(
      //             "assets/images/menu.png",
      //             color: AppTheme.appBackgroundColor,
      //           )
      //         ],
      //       ),
      //     )),
      body: SizedBox(
        // height: MediaQuery.of(context).size.height-MediaQuery.of(context).size.height * .11-100,
        width: MediaQuery.of(context).size.width,
        child: Stack(children: [
          Expanded(
            child: GoogleMap(
              myLocationEnabled: true,
              myLocationButtonEnabled: true,
              mapType: MapType.normal,
              initialCameraPosition: _kGooglePlex,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
            ),
          ),
          // Container(
          //   child: Align(
          //     alignment: Alignment.bottomCenter,
          //     child: Container(
          //         margin: const EdgeInsets.all(30),
          //         padding: const EdgeInsets.all(10),
          //         decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(10),
          //           color: AppTheme.appBackgroundColor,
          //         ),
          //         height: MediaQuery.of(context).size.height * .23,
          //         width: MediaQuery.of(context).size.width,
          //         child: Column(
          //           mainAxisSize: MainAxisSize.min,
          //           children: [
          //             Row(
          //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //               children: [
          //                 const Text(
          //                   "Yesterday",
          //                   style: TextStyle(
          //                       fontWeight: FontWeight.w500, fontSize: 16),
          //                 ),
          //                 Row(
          //                   children: [
          //                     const Text(
          //                       "Online",
          //                       style: TextStyle(
          //                           fontWeight: FontWeight.w500,
          //                           fontSize: 16,
          //                           color: AppTheme.primaryColor),
          //                     ),
          //                     const SizedBox(
          //                       width: 10,
          //                     ),
          //                     Switch(
          //                       activeColor: AppTheme.primaryColor,
          //                       value: isSwitched,
          //                       onChanged: toggleSwitch,
          //                     )
          //                   ],
          //                 ),
          //               ],
          //             ),
          //             const SizedBox(
          //               height: 20,
          //             ),
          //             Expanded(
          //               child: SingleChildScrollView(
          //                 child: Row(
          //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                   children: [
          //                     Column(
          //                       crossAxisAlignment: CrossAxisAlignment.start,
          //                       children: const [
          //                         Text(
          //                           "Money Earned",
          //                           style: TextStyle(fontSize: 12),
          //                         ),
          //                         SizedBox(
          //                           height: 5,
          //                         ),
          //                         Text("\$200",
          //                             style: TextStyle(
          //                                 fontWeight: FontWeight.w500,
          //                                 fontSize: 14,
          //                                 color: AppTheme.primaryColor)),
          //                         SizedBox(
          //                           height: 10,
          //                         ),
          //                         Text(
          //                           "Total Distance",
          //                           style: TextStyle(fontSize: 12),
          //                         ),
          //                         SizedBox(
          //                           height: 5,
          //                         ),
          //                         Text("137 km",
          //                             style: TextStyle(
          //                                 fontWeight: FontWeight.w500,
          //                                 fontSize: 14,
          //                                 color: AppTheme.primaryColor)),
          //                       ],
          //                     ),
          //                     const Align(
          //                       alignment: Alignment.center,
          //                       child: SizedBox(
          //                         height: 80,
          //                         child: VerticalDivider(
          //                           thickness: 2,
          //                           color: AppTheme.dividerColor,
          //                         ),
          //                       ),
          //                     ),
          //                     Container(
          //                       padding: const EdgeInsets.only(right: 50),
          //                       child: Column(
          //                         crossAxisAlignment: CrossAxisAlignment.start,
          //                         children: const [
          //                           Text(
          //                             "Total Hour",
          //                             style: TextStyle(fontSize: 12),
          //                           ),
          //                           SizedBox(
          //                             height: 5,
          //                           ),
          //                           Text("8 hour",
          //                               style: TextStyle(
          //                                   fontWeight: FontWeight.w500,
          //                                   fontSize: 14,
          //                                   color: AppTheme.primaryColor)),
          //                           SizedBox(
          //                             height: 10,
          //                           ),
          //                           Text(
          //                             "Total Job",
          //                             style: TextStyle(fontSize: 12),
          //                           ),
          //                           SizedBox(
          //                             height: 5,
          //                           ),
          //                           Text("17",
          //                               style: TextStyle(
          //                                   fontWeight: FontWeight.w500,
          //                                   fontSize: 14,
          //                                   color: AppTheme.primaryColor)),
          //                         ],
          //                       ),
          //                     )
          //                   ],
          //                 ),
          //               ),
          //             )
          //           ],
          //         )),
          //   ),
          // )

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                margin: const EdgeInsets.all(30),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppTheme.appBackgroundColor,
                ),
                height: MediaQuery.of(context).size.height * .23,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 80,
                      height: 100,
                      child: IconStepper(
                        icons: const [
                          Icon(
                            Icons.circle,
                            color: AppTheme.primaryColor,
                          ),
                          Icon(Icons.circle, color: AppTheme.primaryColor),
                        ],
                        direction: Axis.vertical,
                        lineLength: 30,
                        lineColor: AppTheme.primaryColor,
                        activeStepBorderColor: AppTheme.primaryColor,
                        stepRadius: 10.0,
                        activeStepColor: AppTheme.primaryColor,
                        stepColor: AppTheme.primaryColor,
                        enableNextPreviousButtons: false,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Pick Up",
                                style: TextStyle(
                                    fontSize: 12, color: AppTheme.primaryColor),
                              ),
                              Text(
                                "2.7 km",
                                style: TextStyle(
                                    fontSize: 12, color: AppTheme.textColor),
                              ),
                            ],
                          ),
                          const Text(" Rex House, 769 Isadore",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500)),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            "Drop off",
                            style: TextStyle(
                                fontSize: 12, color: AppTheme.primaryColor),
                          ),
                          const Text(" Rex House, 769 Isadore",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500)),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomButton(
                                buttonText: "Accept",
                                onPress: () {
                                  Get.toNamed(MyRoutes.goToPickUpScreen);
                                },
                              ),
                              // CustomButton(
                              //   buttonText: "Ignore",
                              //   onPress: () {
                              //     Get.toNamed(MyRoutes.chatScreen);
                              //   },
                              // ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      side: BorderSide(
                                        width: 2.0,
                                        color: AppTheme.primaryColor,
                                      ),
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      primary: AppTheme.appBackgroundColor,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 35, vertical: 15),
                                      textStyle: const TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  onPressed: () {
                                    Get.toNamed(MyRoutes.chatScreen);
                                  },
                                  child: Text(
                                    "Ignore",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: AppTheme.primaryColor),
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )),
          )
        ]),
      ),
    );
  }
}
