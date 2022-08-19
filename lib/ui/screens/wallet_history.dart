import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../res/theme/theme.dart';
import 'calendar_screen.dart';

class WalletHistoryScreen extends StatefulWidget {
  const WalletHistoryScreen({Key? key}) : super(key: key);

  @override
  State<WalletHistoryScreen> createState() => _WalletHistoryScreenState();
}

class _WalletHistoryScreenState extends State<WalletHistoryScreen> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  RangeSelectionMode _rangeSelectionMode = RangeSelectionMode
      .toggledOn; // Can be toggled on/off by longpressing a date
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  DateTime? _rangeStart;
  DateTime? _rangeEnd;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 100,
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.all(8.0),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: AppTheme.appBackgroundColor,
                      ),
                    ),
                    const Text(
                      'LOGO',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 26),
                    ),
                    const SizedBox(
                      width: 100,
                    )
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
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          child: CalendarScreen(),
                        );
                      },
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
                      children: const [
                        Text(
                          "From: ",
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          "13 Jan 2020",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          "To: ",
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          "3 Jan 2021",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
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
                      physics: AlwaysScrollableScrollPhysics(),
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
                                    Column(
                                      children: [
                                        Image.asset(
                                          "assets/images/loading.png",
                                          height: 50,
                                          width: 30,
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 5,
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
// showAlertDialog(BuildContext context) {
//   // Create button
//   Widget okButton = FlatButton(
//     child: Text("OK"),
//     onPressed: () {
//       Navigator.of(context).pop();
//     },
//   );
//
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return TableCalendar(
//         firstDay: kFirstDay,
//         lastDay: kLastDay,
//         focusedDay: _focusedDay,
//         selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
//         rangeStartDay: _rangeStart,
//         rangeEndDay: _rangeEnd,
//         calendarFormat: _calendarFormat,
//         rangeSelectionMode: _rangeSelectionMode,
//         onDaySelected: (selectedDay, focusedDay) {
//           if (!isSameDay(_selectedDay, selectedDay)) {
//             setState(() {
//               _selectedDay = selectedDay;
//               _focusedDay = focusedDay;
//               _rangeStart = null; // Important to clean those
//               _rangeEnd = null;
//               _rangeSelectionMode = RangeSelectionMode.toggledOff;
//             });
//           }
//         },
//         onRangeSelected: (start, end, focusedDay) {
//           setState(() {
//             _selectedDay = null;
//             _focusedDay = focusedDay;
//             _rangeStart = start;
//             _rangeEnd = end;
//             _rangeSelectionMode = RangeSelectionMode.toggledOn;
//           });
//         },
//         onFormatChanged: (format) {
//           if (_calendarFormat != format) {
//             setState(() {
//               _calendarFormat = format;
//             });
//           }
//         },
//         onPageChanged: (focusedDay) {
//           _focusedDay = focusedDay;
//         },
//       );
//     },
//   );
// }
}
