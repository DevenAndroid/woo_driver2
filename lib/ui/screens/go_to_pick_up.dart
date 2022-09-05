import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:woo_driver/ui/screens/home.dart';
import 'package:woo_driver/ui/widget/custom_bottom_navigationbar.dart';

import '../../res/theme/theme.dart';
import '../widget/custom_button.dart';
import 'app_routes/app_routes.dart';

class GoToPickUpScreen extends StatefulWidget {
  const GoToPickUpScreen({Key? key}) : super(key: key);

  @override
  State<GoToPickUpScreen> createState() => _GoToPickUpScreenState();
}

class _GoToPickUpScreenState extends State<GoToPickUpScreen> {


  double _currentRangeValues = 0.0;

  Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(26.9112472, 75.7296486),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(26.9112472, 75.7296486),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);


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
                Get.toNamed(MyRoutes.bottomNavBarScreen);
              },
            ),
            title: const Text(
              "Go to Pick up",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 16),
            ),
          )),
      // bottomNavigationBar: const CustomBottomNavigationBar(),
      // BottomAppBar(
      //     shape: AutomaticNotchedShape(RoundedRectangleBorder(
      //         borderRadius: BorderRadius.only(
      //       topLeft: Radius.circular(15),
      //       topRight: Radius.circular(15),
      //     ))),
      //     color: AppTheme.primaryColor,
      //     child: Container(
      //       margin: EdgeInsets.only(right: 15),
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
      // body: Container(
      //   constraints: const BoxConstraints.expand(),
      //   decoration: const BoxDecoration(
      //     image: DecorationImage(
      //         image: AssetImage("assets/images/map.jpg"), fit: BoxFit.cover),
      //   ),
      //   child: Align(
      //     alignment: Alignment.bottomCenter,
      //     child: Container(
      //       margin: const EdgeInsets.all(30),
      //       padding: const EdgeInsets.all(10),
      //       decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(10),
      //         color: AppTheme.appBackgroundColor,
      //       ),
      //       height: MediaQuery.of(context).size.height * .38,
      //       width: MediaQuery.of(context).size.width,
      //       child: Column(
      //         children: [
      //           Row(
      //             children: [
      //               Container(
      //                   margin: const EdgeInsets.only(right: 15),
      //                   child: Image.asset(
      //                     "assets/images/human.png",
      //                     fit: BoxFit.cover,
      //                   )),
      //               Column(
      //                 mainAxisAlignment: MainAxisAlignment.start,
      //                 crossAxisAlignment: CrossAxisAlignment.start,
      //                 children: [
      //                   const Text(
      //                     "Ian Somerhalder",
      //                     style: TextStyle(fontSize: 14),
      //                   ),
      //                   const SizedBox(
      //                     height: 5,
      //                   ),
      //                   Row(
      //                     mainAxisAlignment: MainAxisAlignment.start,
      //                     crossAxisAlignment: CrossAxisAlignment.center,
      //                     children: const [
      //                       Icon(
      //                         Icons.location_on_outlined,
      //                         color: AppTheme.primaryColor,
      //                       ),
      //                       Text(
      //                         "Toronto",
      //                         style: TextStyle(fontSize: 12),
      //                       ),
      //                     ],
      //                   )
      //                 ],
      //               )
      //             ],
      //           ),
      //           const SizedBox(
      //             height: 5,
      //           ),
      //           const Divider(
      //             color: AppTheme.dividerColor,
      //             thickness: 2,
      //           ),
      //           const SizedBox(
      //             height: 8,
      //           ),
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: const [
      //               Text(
      //                 "Pick Up",
      //                 style:
      //                     TextStyle(fontSize: 12, color: AppTheme.primaryColor),
      //               ),
      //               Text(
      //                 "Total Fare: ",
      //                 style: TextStyle(fontSize: 12, color: AppTheme.textColor),
      //               ),
      //             ],
      //           ),
      //           const SizedBox(
      //             height: 5,
      //           ),
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: const [
      //               Text(
      //                 "Rex House, 769 Isadore",
      //                 style:
      //                     TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
      //               ),
      //               Text(
      //                 "\$25.50",
      //                 style: TextStyle(color: AppTheme.primaryColor),
      //               ),
      //             ],
      //           ),
      //           const SizedBox(
      //             height: 10,
      //           ),
      //           Row(
      //             children: [
      //               Column(
      //                 crossAxisAlignment: CrossAxisAlignment.start,
      //                 children: const [
      //                   SizedBox(
      //                     height: 10,
      //                   ),
      //                   Text(
      //                     "Order Reference",
      //                     style: TextStyle(
      //                         fontSize: 12, color: AppTheme.primaryColor),
      //                   ),
      //                   SizedBox(
      //                     height: 5,
      //                   ),
      //                   Text(
      //                     "0000000000000",
      //                     style: TextStyle(
      //                         fontSize: 14, fontWeight: FontWeight.w500),
      //                   ),
      //                 ],
      //               )
      //             ],
      //           ),
      //           SizedBox(
      //             height: 10,
      //           ),
      //           Slider(
      //             activeColor: AppTheme.primaryColor,
      //             // values: _currentRangeValues,
      //             max: 100,
      //
      //             onChanged: (values) {
      //               setState(() {
      //                 _currentRangeValues = values;
      //                 print(_currentRangeValues);
      //               });
      //             },
      //             value: _currentRangeValues,
      //           ),
      //           // ElevatedButton(
      //           //     style: ElevatedButton.styleFrom(
      //           //         shape: const RoundedRectangleBorder(
      //           //             borderRadius: BorderRadius.all(Radius.circular(10))),
      //           //         primary: AppTheme.primaryColor,
      //           //         padding: const EdgeInsets.symmetric(
      //           //             horizontal: 25, vertical: 10),
      //           //         textStyle:
      //           //             const TextStyle(fontWeight: FontWeight.bold)),
      //           //     onPressed: () {},
      //           //     child: const Text(
      //           //       "Go to Pick up",
      //           //       style: TextStyle(fontWeight: FontWeight.bold),
      //           //     )),
      //           Align(
      //             alignment: Alignment.center,
      //             child: CustomButton(
      //               buttonText: " Continue ",
      //               onPress: () {
      //                 Get.toNamed(MyRoutes.pickUpLocationScreen);
      //               },
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),

      body: Stack(children: [
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
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Container(
                        margin: const EdgeInsets.only(right: 15),
                        child: Image.asset(
                          "assets/images/human.png",
                          fit: BoxFit.cover,
                        )),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Ian Somerhalder",
                          style: TextStyle(fontSize: 14),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.location_on_outlined,
                              color: AppTheme.primaryColor,
                            ),
                            Text(
                              "Toronto",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Divider(
                  color: AppTheme.dividerColor,
                  thickness: 2,
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Pick Up",
                      style:
                      TextStyle(fontSize: 12, color: AppTheme.primaryColor),
                    ),
                    Text(
                      "Total Fare: ",
                      style: TextStyle(fontSize: 12, color: AppTheme.textColor),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Rex House, 769 Isadore",
                      style:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "\$25.50",
                      style: TextStyle(color: AppTheme.primaryColor),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Order Reference",
                          style: TextStyle(
                              fontSize: 12, color: AppTheme.primaryColor),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "0000000000000",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Slider(
                  activeColor: AppTheme.primaryColor,
                  // values: _currentRangeValues,
                  max: 100,

                  onChanged: (values) {
                    setState(() {
                      _currentRangeValues = values;
                      print(_currentRangeValues);
                    });
                  },
                  value: _currentRangeValues,
                ),
                // ElevatedButton(
                //     style: ElevatedButton.styleFrom(
                //         shape: const RoundedRectangleBorder(
                //             borderRadius: BorderRadius.all(Radius.circular(10))),
                //         primary: AppTheme.primaryColor,
                //         padding: const EdgeInsets.symmetric(
                //             horizontal: 25, vertical: 10),
                //         textStyle:
                //             const TextStyle(fontWeight: FontWeight.bold)),
                //     onPressed: () {},
                //     child: const Text(
                //       "Go to Pick up",
                //       style: TextStyle(fontWeight: FontWeight.bold),
                //     )),
                Align(
                  alignment: Alignment.center,
                  child: CustomButton(
                    buttonText: "Go to Pick up",
                    onPress: () {
                      Get.toNamed(MyRoutes.pickUpLocationScreen);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),

    );
  }
}
