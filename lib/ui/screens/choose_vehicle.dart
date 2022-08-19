import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:woo_driver/ui/screens/app_detail.dart';
import 'package:woo_driver/ui/screens/job_preferences.dart';
import 'package:woo_driver/ui/widget/custom_button.dart';

import '../../res/theme/theme.dart';
import 'app_routes/app_routes.dart';

class ChooseVehicleScreen extends StatefulWidget {
  const ChooseVehicleScreen({Key? key}) : super(key: key);

  @override
  State<ChooseVehicleScreen> createState() => _ChooseVehicleScreenState();
}

class _ChooseVehicleScreenState extends State<ChooseVehicleScreen>  {


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
              onTap: (){
                Get.to(AppDetailScreen());
              },),
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
                Container(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("assets/images/Scooter.png"),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        "Scooter",
                        style: TextStyle(
                            fontSize: 18, color: AppTheme.appBackgroundColor),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppTheme.primaryColor,
                  ),
                  height: MediaQuery.of(context).size.height * .1,
                  width: MediaQuery.of(context).size.width,
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("assets/images/Motor_Cycle.png"),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        "Motor Cycle",
                        style: TextStyle(
                            fontSize: 18, color: AppTheme.primaryColor),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppTheme.appBackgroundColor,
                  ),
                  height: MediaQuery.of(context).size.height * .1,
                  width: MediaQuery.of(context).size.width,
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("assets/images/Bicycle.png"),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        "Bicycle",
                        style: TextStyle(
                            fontSize: 18, color: AppTheme.primaryColor),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppTheme.appBackgroundColor,
                  ),
                  height: MediaQuery.of(context).size.height * .1,
                  width: MediaQuery.of(context).size.width,
                ),
                const SizedBox(
                  height: 130,
                ),
                Align(
                  alignment: Alignment.center,
                  child: CustomButton(
                    buttonText: "Continue" ,
                    onPress: (){
                      Get.toNamed(MyRoutes.jobPreferencesScreen);
                    },
                  )
                  // ElevatedButton(
                  //     style: ElevatedButton.styleFrom(
                  //         shape: const RoundedRectangleBorder(
                  //             borderRadius:
                  //             BorderRadius.all(Radius.circular(5))),
                  //         primary: AppTheme.primaryColor,
                  //         padding: const EdgeInsets.symmetric(
                  //             horizontal: 35, vertical: 15),
                  //         textStyle:
                  //         const TextStyle(fontWeight: FontWeight.bold)),
                  //     onPressed: () {},
                  //     child: const Text(
                  //       " Continue ",
                  //       style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),
                  //     )),
                ),
              ],
            ),
          ),
        ));
  }
}
