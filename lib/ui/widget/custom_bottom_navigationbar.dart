// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';
// // import 'package:woo_driver/ui/screens/app_routes/app_routes.dart';
// //
// // import '../../res/theme/theme.dart';
// //
// // class CustomBottomNavigationBar extends StatefulWidget {
// //   const CustomBottomNavigationBar({Key? key}) : super(key: key);
// //
// //   @override
// //   State<CustomBottomNavigationBar> createState() =>
// //       _CustomBottomNavigationBarState();
// // }
// //
// // class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
// //   int _selectedIndex = 0;
// //   Color _selectedColor = Color(0xff070707);
// //   Color selectedColor = AppTheme.appBackgroundColor;
// //
// //   // Color _unSelectedColor = Color(0xffd3c7c7);
// //
// //   @override
// //   void initState() {
// //     // TODO: implement initState
// //     super.initState();
// //     setState(() {});
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return BottomAppBar(
// //         shape: const AutomaticNotchedShape(RoundedRectangleBorder(
// //             borderRadius: BorderRadius.only(
// //           topLeft: Radius.circular(15),
// //           topRight: Radius.circular(15),
// //         ))),
// //         color: AppTheme.primaryColor,
// //         child: Container(
// //           margin: const EdgeInsets.only(right: 15),
// //           child: Row(
// //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //             children: <Widget>[
// //               GestureDetector(
// //                 onTap: () {
// //                   _selectedIndex = 1;
// //
// //                   if (_selectedIndex == 1) {
// //                     _selectedColor = AppTheme.appBackgroundColor;
// //                     Get.toNamed(MyRoutes.homeScreen);
// //                   } else {
// //                     _selectedColor = Color(0xffb0aaaa);
// //                     _selectedIndex = 0;
// //                   }
// //                 },
// //                 child: Image.asset(
// //                   "assets/images/home.png",
// //                   color: _selectedColor,
// //                 ),
// //               ),
// //               GestureDetector(
// //                 onTap: () {
// //                   _selectedIndex = 2;
// //                   if (_selectedIndex == 2) {
// //                     _selectedColor = AppTheme.appBackgroundColor;
// //                     Get.toNamed(MyRoutes.walletHistoryScreen);
// //                   } else {
// //                     _selectedColor = Color(0xffb0aaaa);
// //                     _selectedIndex = 0;
// //                   }
// //                 },
// //                 child: Image.asset(
// //                   "assets/images/wallet.png",
// //                   color: _selectedColor,
// //                 ),
// //               ),
// //               GestureDetector(
// //                 onTap: () {
// //                   _selectedIndex = 3;
// //                   if (_selectedIndex == 3) {
// //                     _selectedColor = AppTheme.appBackgroundColor;
// //                     Get.toNamed(MyRoutes.profileHistoryScreen);
// //                   } else {
// //                     _selectedColor = Color(0xffb0aaaa);
// //                     _selectedIndex = 0;
// //                   }
// //                 },
// //                 child: Image.asset(
// //                   "assets/images/history.png",
// //                   color: _selectedColor,
// //                 ),
// //               ),
// //               GestureDetector(
// //                 onTap: () {
// //                   _selectedIndex = 4;
// //                   if (_selectedIndex == 4) {
// //                     _selectedColor = AppTheme.appBackgroundColor;
// //                     Get.toNamed(MyRoutes.moreScreen);
// //                   } else {
// //                     _selectedColor = Color(0xffb0aaaa);
// //                     _selectedIndex = 0;
// //                   }
// //                 },
// //                 child: Image.asset(
// //                   "assets/images/menu.png",
// //                   color: _selectedColor,
// //                 ),
// //               )
// //             ],
// //           ),
// //         ));
// //   }
// // }
// //
// //
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:woo_driver/res/theme/theme.dart';
// import 'package:woo_driver/ui/screens/app_routes/app_routes.dart';
// import 'package:woo_driver/ui/screens/home.dart';
// import 'package:woo_driver/ui/screens/more.dart';
// import 'package:woo_driver/ui/screens/profile_detail.dart';
// import 'package:woo_driver/ui/screens/wallet_history.dart';
//
// class CustomBottomNavigationBar extends StatefulWidget {
//   const CustomBottomNavigationBar({Key? key}) : super(key: key);
//
//   @override
//   State<CustomBottomNavigationBar> createState() =>
//       _CustomBottomNavigationBarState();
// }
//
// class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
//   int pageIndex = 0;
//
//   final pages = [
//     HomeScreen(),
//     WalletHistoryScreen(),
//     ProfileDetailScreen(),
//     MoreScreen(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return buildMyNavBar(context);
//   }
//
//   Container buildMyNavBar(BuildContext context) {
//     return Container(
//       height: MediaQuery.of(context).size.height*.09,
//       decoration: BoxDecoration(
//         color: AppTheme.primaryColor,
//         borderRadius: const BorderRadius.only(
//           topLeft: Radius.circular(20),
//           topRight: Radius.circular(20),
//         ),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           GestureDetector(
//             onTap: (){
//               setState(() {
//                 pageIndex = 0;
//               });
//             },
//             child:  pageIndex == 0 ? Image.asset("assets/images/home.png",
//             color: AppTheme.appBackgroundColor,): Image.asset("assets/images/home.png",
//               color: Color(0xff000000),) ,
//
//           ),
//           // IconButton(
//           //   enableFeedback: false,
//           //   onPressed: () {
//           //     setState(() {
//           //       pageIndex = 0;
//           //     });
//           //   },
//           //   icon: pageIndex == 0
//           //       ? const Icon(
//           //           Icons.home_filled,
//           //           color: Colors.white,
//           //           size: 35,
//           //         )
//           //       : const Icon(
//           //           Icons.home_outlined,
//           //           color: Colors.white,
//           //           size: 35,
//           //         ),
//           // ),
//           IconButton(
//             enableFeedback: false,
//             onPressed: () {
//               setState(() {
//                 pageIndex = 1;
//               });
//             },
//             icon: pageIndex == 1
//                 ? const Icon(
//                     Icons.work_rounded,
//                     color: Colors.white,
//                     size: 35,
//                   )
//                 : const Icon(
//                     Icons.work_outline_outlined,
//                     color: Colors.white,
//                     size: 35,
//                   ),
//           ),
//           IconButton(
//             enableFeedback: false,
//             onPressed: () {
//               setState(() {
//                 pageIndex = 2;
//               });
//             },
//             icon: pageIndex == 2
//                 ? const Icon(
//                     Icons.widgets_rounded,
//                     color: Colors.white,
//                     size: 35,
//                   )
//                 : const Icon(
//                     Icons.widgets_outlined,
//                     color: Colors.white,
//                     size: 35,
//                   ),
//           ),
//           IconButton(
//             enableFeedback: false,
//             onPressed: () {
//               setState(() {
//                 pageIndex = 3;
//               });
//             },
//             icon: pageIndex == 3
//                 ? const Icon(
//                     Icons.person,
//                     color: Colors.white,
//                     size: 35,
//                   )
//                 : const Icon(
//                     Icons.person_outline,
//                     color: Colors.white,
//                     size: 35,
//                   ),
//           ),
//         ],
//       ),
//     );
//   }
// }
