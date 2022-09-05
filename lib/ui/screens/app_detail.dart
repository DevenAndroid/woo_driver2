import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../res/theme/theme.dart';
import '../widget/custom_button.dart';
import 'app_routes/app_routes.dart';
import 'sign_up_screen.dart';

class AppDetailScreen extends StatefulWidget {
  const AppDetailScreen({Key? key}) : super(key: key);

  @override
  State<AppDetailScreen> createState() => _AppDetailScreenState();
}

class _AppDetailScreenState extends State<AppDetailScreen> {
  String bullet = "\u2022 ";

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
              leading: GestureDetector(child: const Icon(Icons.arrow_back_ios),
                onTap: (){
                  Get.to(const SignUpScreen());
                },),
              title: const Text(
                "LOGO",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 26),
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
                const Text("How to earn in app Detail",
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
                  height: 10,
                ),
                Align(
                    alignment: Alignment.center,
                    child: Image.asset("assets/images/app_detail.png")),
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
                                child: Text(
                                  "Lorem Ipsum Dolor Sit Amet,Consectetur Adipiscing Elit,",
                                  style: const TextStyle(
                                      fontSize: 16, color: Color(0xff707070)),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),


                        ],
                      );
                    }),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.center,
                  child: CustomButton(

                    buttonText: " Continue ",
                    onPress: () {
                      Get.toNamed(MyRoutes.chooseVehicleScreen);
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ));
  }
}
