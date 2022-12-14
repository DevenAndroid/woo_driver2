import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:woo_driver/ui/screens/app_detail.dart';
import 'package:woo_driver/ui/widget/custom_button.dart';

import '../../res/theme/theme.dart';
import 'app_routes/app_routes.dart';

class ChooseVehicleScreen extends StatefulWidget {
  const ChooseVehicleScreen({Key? key}) : super(key: key);

  @override
  State<ChooseVehicleScreen> createState() => _ChooseVehicleScreenState();
}

class _ChooseVehicleScreenState extends State<ChooseVehicleScreen> {
  List<VehiclsType> vehicls = [
    VehiclsType(title: "Scooter", image: "assets/images/Scooter.png"),
    VehiclsType(title: "Motor Cycle", image: "assets/images/Motor_Cycle.png"),
    VehiclsType(title: "Bicycle", image: "assets/images/Bicycle.png"),
  ];

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
                  Get.to(const AppDetailScreen());
                },
              ),
              title: const Text(
                "LOGO",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 30),
              ),
            )),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text("Choose Vehicle you have",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                const SizedBox(
                  height: 5,
                ),
                const SizedBox(
                  width: 50,
                  child: Divider(
                    height: 2,
                    thickness: 3,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ListView.builder(
                    itemCount: vehicls.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          for (var item in vehicls) {
                            item.selected = false;
                          }
                          vehicls[index].selected = true;
                          setState(() {});
                        },
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: vehicls[index].selected == false
                                    ? Colors.white
                                    : AppTheme.primaryColor,
                              ),
                              height: MediaQuery.of(context).size.height * .1,
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(vehicls[index].image.toString()),
                                  const SizedBox(
                                    width: 50,
                                  ),
                                  Text(
                                    vehicls[index].title.toString(),
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: vehicls[index].selected != false
                                            ? Colors.white
                                            : AppTheme.primaryColor),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 35,
                            )
                          ],
                        ),
                      );
                    }),
                const SizedBox(
                  height: 130,
                ),
                Align(
                    alignment: Alignment.center,
                    child: CustomButton(
                      buttonText: "Continue",
                      onPress: () {
                        Get.toNamed(MyRoutes.jobPreferencesScreen);
                      },
                    )),
              ],
            ),
          ),
        ));
  }
}

class VehiclsType {
  final String? title;
  final String? image;
  bool? selected;

  VehiclsType({this.title, this.image, this.selected = false});
}
