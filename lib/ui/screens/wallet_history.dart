import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:im_stepper/stepper.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:woo_driver/ui/screens/app_routes/app_routes.dart';
import 'package:woo_driver/ui/widget/custom_bottom_navigationbar.dart';

import '../../res/theme/theme.dart';

class WalletHistoryScreen extends StatefulWidget {
  const WalletHistoryScreen({Key? key}) : super(key: key);

  @override
  State<WalletHistoryScreen> createState() => _WalletHistoryScreenState();
}

class _WalletHistoryScreenState extends State<WalletHistoryScreen> {



  String? _startDateVPG, _endDateVPG;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: const CustomBottomNavigationBar(),
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
      body: Stack(children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .2,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppTheme.primaryColor,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  color: AppTheme.primaryColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // GestureDetector(
                    //   onTap: ()=>Get.toNamed(MyRoutes.bottomNavBarScreen),
                    //   child: Container(
                    //     width: 100,
                    //     alignment: Alignment.centerLeft,
                    //     padding: const EdgeInsets.all(8.0),
                    //     child: const Icon(
                    //       Icons.arrow_back_ios,
                    //       color: AppTheme.appBackgroundColor,
                    //     ),
                    //   ),
                    // ),
                    const Text(
                      'LOGO',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 26),
                    ),
                    // const SizedBox(
                    //   width: 100,
                    // )
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 100,
          bottom: 0,
          right: 0,
          left: 0,
          child: Container(
            // padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            margin: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                      color: AppTheme.boxColor,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  padding: const EdgeInsets.only(
                      right: 50, left: 50, top: 15, bottom: 15),
                  // color: AppTheme.boxColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: const [
                          Text(
                            "Total Jobs",
                            style: TextStyle(
                                fontSize: 16, color: AppTheme.textColor),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "10",
                            style: TextStyle(
                                fontSize: 20,
                                color: AppTheme.primaryColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 50,
                          child: VerticalDivider(
                            thickness: 2,
                            color: AppTheme.dividerColor,
                          ),
                        ),
                      ),
                      Column(
                        children: const [
                          Text(
                            "Earned",
                            style: TextStyle(
                                fontSize: 16, color: AppTheme.textColor),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "\$234",
                            style: TextStyle(
                                fontSize: 20,
                                color: AppTheme.primaryColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    print("object");
                    Get.defaultDialog(
                        title: 'Date Range',
                        content: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.5,
                          child: Column(
                            children: [
                              SfDateRangePicker(
                                showActionButtons: true,
                                onSubmit: (
                                    Object? value) {
                                  Navigator.pop(context);
                                  // customActivityController
                                  //     .getCustomActivityReport(
                                  //     null,
                                  //     varianceSelectedActivity,
                                  //     '${_startDateVPG}',
                                  //     '${_endDateVPG}');
                                },
                                onCancel: () {
                                  Navigator.pop(context);
                                },
                                selectionMode: DateRangePickerSelectionMode
                                    .range,
                                onSelectionChanged: selectionChangedVPG,
                              )
                            ],),
                        )
                    );
                  },
                  child: Container(
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
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          "From: ",
                          style: const TextStyle(fontSize: 14),
                        ),
                        Text(
                          _startDateVPG.toString(),
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        const Text(
                          "To: ",
                          style: const TextStyle(fontSize: 14),
                        ),
                        Text(
                          _endDateVPG.toString(),
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Icon(
                          Icons.calendar_month_outlined,
                          color: AppTheme.primaryColor,
                        )
                      ],
                    ),
                  ),
                ),
                MediaQuery(
                  data: MediaQuery.of(context).removePadding(removeTop: true),
                  child: Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const AlwaysScrollableScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                            margin: const EdgeInsets.only(top: 15),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 8),
                            decoration: BoxDecoration(
                                color: AppTheme.appBackgroundColor,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0xffe3dfdf),
                                    blurRadius: 10.0,
                                  ),
                                ]),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      "Ian Somerhalder",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: AppTheme.primaryColor),
                                    ),
                                    Text(
                                      "\$200",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: AppTheme.primaryColor),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "22:21, 21 sept 2021",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: AppTheme.textColor),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    MediaQuery.removePadding(
                                      context: context,
                                      child: SizedBox(
                                        width: 50,
                                        height: 70,
                                        child: IconStepper(
                                          icons: const [
                                            Icon(
                                              Icons.circle,
                                              color: AppTheme.primaryColor,
                                            ),
                                            Icon(Icons.circle,
                                                color: AppTheme.primaryColor),
                                          ],
                                          direction: Axis.vertical,
                                          lineLength: 20,
                                          lineColor: AppTheme.primaryColor,
                                          activeStepBorderColor:
                                              AppTheme.primaryColor,
                                          stepRadius: 5.0,
                                          activeStepColor:
                                              AppTheme.primaryColor,
                                          stepColor: AppTheme.primaryColor,
                                          enableNextPreviousButtons: false,
                                        ),
                                      ),
                                    ),
                                    Column(
                                      children: const [
                                        Text(
                                          "Rex House, 769 Isadore",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xff707070)),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          "Rex House, 769 Isadore",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xff707070)),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ));
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }

  void selectionChangedVPG(DateRangePickerSelectionChangedArgs args) {

    setState(() {
      _startDateVPG =
          DateFormat('yyyy-MM-dd').format(args.value.startDate).toString();
      _endDateVPG = DateFormat('yyyy-MM-dd').format(
          args.value.endDate ?? args.value.startDate).toString();
    });
  }





}

