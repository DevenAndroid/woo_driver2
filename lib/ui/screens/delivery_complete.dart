import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../res/theme/theme.dart';
import '../widget/custom_button.dart';
import 'app_routes/app_routes.dart';
import 'home.dart';

class DeliveryCompleteScreen extends StatefulWidget {
  const DeliveryCompleteScreen({Key? key}) : super(key: key);

  @override
  State<DeliveryCompleteScreen> createState() => _DeliveryCompleteScreenState();
}

class _DeliveryCompleteScreenState extends State<DeliveryCompleteScreen> {

  double _currentRangeValues =  0.0;


  final Completer<GoogleMapController> _controller = Completer();

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
                Get.to(const HomeScreen());
              },
            ),
            title: const Text(
              "Delivery Complete",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 16),
            ),
          )),
      bottomNavigationBar: BottomAppBar(
          shape: const AutomaticNotchedShape(RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ))),
          color: AppTheme.primaryColor,
          child: Container(
            margin: const EdgeInsets.only(right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset(
                  "assets/images/home.png",
                  color: AppTheme.appBackgroundColor,
                ),
                Image.asset(
                  "assets/images/wallet.png",
                  color: AppTheme.appBackgroundColor,
                ),
                Image.asset(
                  "assets/images/history.png",
                  color: AppTheme.appBackgroundColor,
                ),
                Image.asset(
                  "assets/images/menu.png",
                  color: AppTheme.appBackgroundColor,
                )
              ],
            ),
          )),
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
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: const EdgeInsets.all(30),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppTheme.appBackgroundColor,
            ),
            height: MediaQuery.of(context).size.height * .2,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Destination",
                      style:
                      TextStyle(fontSize: 12, color: AppTheme.primaryColor),
                    ),
                    Text(
                      "Total Fare:",
                      style:
                      TextStyle(fontSize: 12, color: AppTheme.textColor),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Rex House, 769 Isadore",
                      style:
                      TextStyle(fontSize: 14,fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "\$25.50",
                      style:
                      TextStyle(fontSize: 12, color: AppTheme.primaryColor),
                    ),
                  ],
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
                    buttonText: "Delivery Complete",
                    onPress: () {
                      Get.toNamed(MyRoutes.walletHistoryScreen);
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
