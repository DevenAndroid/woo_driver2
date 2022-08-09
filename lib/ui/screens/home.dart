import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../res/theme/theme.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height * .13),
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
                padding: EdgeInsets.only(right: 10),
                child: GestureDetector(
                  child: const Icon(Icons.notifications),
                  onTap: () {

                  },
                ),
              ),
            ],
          )),
      // bottomNavigationBar: BottomAppBar(
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
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/map.jpg"), fit: BoxFit.cover),
        ),
        child: Align(
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
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Yesterday",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      Row(
                        children: [
                          const Text(
                            "Online",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: AppTheme.primaryColor),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Switch(
                            activeColor: AppTheme.primaryColor,
                            value: isSwitched,
                            onChanged: toggleSwitch,
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Money Earned",
                                style: TextStyle(fontSize: 12),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("\$200",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: AppTheme.primaryColor)),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Total Distance",
                                style: TextStyle(fontSize: 12),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("137 km",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: AppTheme.primaryColor)),
                            ],
                          ),
                          const Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              height: 80,
                              child: VerticalDivider(
                                thickness: 2,
                                color: AppTheme.dividerColor,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(right: 50),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Total Hour",
                                  style: TextStyle(fontSize: 12),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("8 hour",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: AppTheme.primaryColor)),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Total Job",
                                  style: TextStyle(fontSize: 12),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("17",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: AppTheme.primaryColor)),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
