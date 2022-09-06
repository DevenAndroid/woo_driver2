import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../res/theme/theme.dart';
import '../widget/custom_button.dart';
import 'app_routes/app_routes.dart';

class PickUpLocationScreen extends StatefulWidget {
  const PickUpLocationScreen({Key? key}) : super(key: key);

  @override
  State<PickUpLocationScreen> createState() => _PickUpLocationScreenState();
}

class _PickUpLocationScreenState extends State<PickUpLocationScreen> {
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
                Get.toNamed(MyRoutes.goToPickUpScreen);
              },
            ),
            title: const Text(
              "Pick up Location",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 16),
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
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Drop off",
                      style:
                          TextStyle(fontSize: 12, color: AppTheme.primaryColor),
                    ),
                    Icon(
                      Icons.message,
                      color: AppTheme.primaryColor,
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Text(
                      "Rex House, 769 Isadore",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Order Reference",
                      style:
                          TextStyle(fontSize: 12, color: AppTheme.primaryColor),
                    ),
                    Text(
                      "Total Fare:",
                      style: TextStyle(fontSize: 12, color: AppTheme.textColor),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "0000000000000",
                      style: TextStyle(
                        fontSize: 14,
                      ),
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
                Align(
                  alignment: Alignment.center,
                  child: CustomButton(
                    buttonText: "Go to drop of",
                    onPress: () {
                      Get.toNamed(MyRoutes.deliveryCompleteScreen);
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
