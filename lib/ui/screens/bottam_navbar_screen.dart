import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:woo_driver/ui/screens/profile.dart';
import 'package:woo_driver/ui/screens/profile_detail.dart';
import 'package:woo_driver/ui/screens/wallet_history.dart';

import '../../res/theme/theme.dart';
import 'home.dart';
import 'more.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int pageIndex = 0;

  final pages = [
    const HomeScreen(),
    const WalletHistoryScreen(),
    const ProfileScreen(),
    const MoreScreen(),
  ];

  updatePageIndex(index) {
    pageIndex = index;
  }

  DateTime date = DateTime(2016, 10, 26);
  DateTime time = DateTime(2016, 5, 10, 22, 35);
  DateTime dateTime = DateTime(2016, 8, 3, 17, 45);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pages.elementAt(pageIndex),
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * .09,
        decoration: const BoxDecoration(
          color: AppTheme.primaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  updatePageIndex(0);
                });
              },
              child: Image.asset(
                "assets/images/home.png",
                color:
                    pageIndex == 0 ? Colors.white : Colors.white.withOpacity(1),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  updatePageIndex(1);
                });
              },
              child: Image.asset(
                "assets/images/wallet.png",
                color:
                    pageIndex == 1 ? Colors.white : Colors.white.withOpacity(1),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  updatePageIndex(2);
                });
              },
              child: Image.asset(
                "assets/images/history.png",
                color:
                    pageIndex == 2 ? Colors.white : Colors.white.withOpacity(1),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  updatePageIndex(3);
                });
              },
              child: Image.asset(
                "assets/images/menu.png",
                color:
                    pageIndex == 3 ? Colors.white : Colors.white.withOpacity(1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
