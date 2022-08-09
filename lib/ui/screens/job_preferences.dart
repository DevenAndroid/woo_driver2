import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../res/theme/theme.dart';
import 'choose_vehicle.dart';

class JobPreferencesScreen extends StatefulWidget {
  const JobPreferencesScreen({Key? key}) : super(key: key);

  @override
  State<JobPreferencesScreen> createState() => _JobPreferencesScreenState();
}

class _JobPreferencesScreenState extends State<JobPreferencesScreen> {


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
                  Get.to(const ChooseVehicleScreen());
                },
              ),
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
                const Text("Job Preferences",
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
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppTheme.appBackgroundColor,
                  ),
                  height: MediaQuery.of(context).size.height * .065,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.location_on_outlined,
                            color: AppTheme.primaryColor,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          VerticalDivider(
                              width: 2,
                              thickness: 2,
                              color: AppTheme.dividerColor),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Choose Location",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const Icon(Icons.keyboard_arrow_up)
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppTheme.appBackgroundColor,
                  ),
                  height: MediaQuery.of(context).size.height * .065,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.location_on_outlined,
                            color: AppTheme.primaryColor,
                          ),
                          // SizedBox(
                          //   width: 10,
                          // ),
                          // VerticalDivider(
                          //     width: 2,
                          //     thickness: 2,
                          //     color: AppTheme.dividerColor),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Toronto",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const Text(
                        "Change",
                        style: TextStyle(
                            color: Color(0xff2B7AF1),
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                // Container(
                //   padding: const EdgeInsets.all(15),
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(10),
                //     color: AppTheme.appBackgroundColor,
                //   ),
                //   height: MediaQuery.of(context).size.height * .065,
                //   width: MediaQuery.of(context).size.width,
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Row(
                //         children: const [
                //           Icon(
                //             Icons.gps_fixed,
                //             color: AppTheme.primaryColor,
                //           ),
                //           SizedBox(
                //             width: 10,
                //           ),
                //           VerticalDivider(
                //               width: 2,
                //               thickness: 2,
                //               color: AppTheme.dividerColor),
                //           SizedBox(
                //             width: 10,
                //           ),
                //           Text(
                //             "Choose area",
                //             style: TextStyle(
                //                 fontSize: 14, fontWeight: FontWeight.w500),
                //           ),
                //         ],
                //       ),
                //       const Icon(Icons.keyboard_arrow_down)
                //     ],
                //   ),
                // ),
                Theme(
                  data: ThemeData().copyWith(
                    dividerColor: Colors.transparent,
                  ),
                  child: ExpansionTile(
                    collapsedBackgroundColor: Colors.white,
                    // leading: const Icon(
                    //   Icons.gps_fixed,
                    //   color: AppTheme.primaryColor,
                    // ),
                    title: Row(
                      children: const [
                        Icon(
                          Icons.gps_fixed,
                          color: AppTheme.primaryColor,
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          "|",
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                              color: AppTheme.dividerColor),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          "Choose area",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppTheme.blackTextColor),
                        ),
                      ],
                    ),
                    trailing: const Icon(
                      Icons.keyboard_arrow_down,
                      color: AppTheme.blackTextColor,
                    ),
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "Recommend Areas",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: AppTheme.primaryColor),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(4),
                                margin: const EdgeInsets.all(10),
                                height: MediaQuery.of(context).size.height * .1,
                                width: MediaQuery.of(context).size.width * .25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppTheme.primaryColor,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.gps_fixed,
                                      color: AppTheme.appBackgroundColor,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "Ottava",
                                          style: TextStyle(
                                              color:
                                                  AppTheme.appBackgroundColor),
                                        ),
                                        Text(
                                          "1.09 KM",
                                          style: TextStyle(
                                              color:
                                                  AppTheme.appBackgroundColor),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: MediaQuery.of(context).size.height * .1,
                                width: MediaQuery.of(context).size.width * .25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppTheme.appBackgroundColor,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.gps_fixed,
                                      color: AppTheme.textColor,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "Victoria",
                                          style: TextStyle(
                                              color: AppTheme.textColor),
                                        ),
                                        Text(
                                          "2.9 KM",
                                          style: TextStyle(
                                              color: AppTheme.textColor),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: MediaQuery.of(context).size.height * .1,
                                width: MediaQuery.of(context).size.width * .25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppTheme.appBackgroundColor,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.gps_fixed,
                                      color: AppTheme.textColor,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "Victoria",
                                          style: TextStyle(
                                              color: AppTheme.textColor),
                                        ),
                                        Text(
                                          "2.9 KM",
                                          style: TextStyle(
                                              color: AppTheme.textColor),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Theme(
                    data: ThemeData().copyWith(
                      dividerColor: Colors.transparent,
                    ),
                    child: ExpansionTile(
                      collapsedBackgroundColor: Colors.white,
                      // leading: const Icon(
                      //   Icons.gps_fixed,
                      //   color: AppTheme.primaryColor,
                      // ),
                      title: Row(
                        children: const [
                          Icon(
                            Icons.watch_later_outlined,
                            color: AppTheme.primaryColor,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "|",
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w500,
                                color: AppTheme.dividerColor),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "Time selection",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: AppTheme.blackTextColor),
                          ),
                        ],
                      ),
                      trailing: const Icon(
                        Icons.keyboard_arrow_down,
                        color: AppTheme.blackTextColor,
                      ),
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: AppTheme.primaryColor,
                                        ),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(20))),
                                    child: const Icon(
                                      Icons.circle,
                                      color: AppTheme.primaryColor,
                                      size: 15,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    "08:00 PM to 10:00 PM",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 16.0),
                                child: Icon(
                                  Icons.watch_later_outlined,
                                  color: AppTheme.primaryColor,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                // Container(
                //   padding: const EdgeInsets.all(15),
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(10),
                //     color: AppTheme.appBackgroundColor,
                //   ),
                //   height: MediaQuery.of(context).size.height * .065,
                //   width: MediaQuery.of(context).size.width,
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Row(
                //         children: const [
                //           Icon(
                //             Icons.watch_later_outlined,
                //             color: AppTheme.primaryColor,
                //           ),
                //           SizedBox(
                //             width: 10,
                //           ),
                //           VerticalDivider(
                //               width: 2,
                //               thickness: 2,
                //               color: AppTheme.dividerColor),
                //           SizedBox(
                //             width: 10,
                //           ),
                //           Text(
                //             "Time selection",
                //             style: TextStyle(
                //                 fontSize: 14, fontWeight: FontWeight.w500),
                //           ),
                //         ],
                //       ),
                //       const Icon(Icons.keyboard_arrow_down)
                //     ],
                //   ),
                // ),
                const SizedBox(
                  height: 150,
                ),
                Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          primary: AppTheme.primaryColor,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 35, vertical: 15),
                          textStyle:
                              const TextStyle(fontWeight: FontWeight.bold)),
                      onPressed: () {},
                      child: const Text(
                        " Continue ",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 14),
                      )),
                ),
              ],
            ),
          ),
        ));
  }
}
