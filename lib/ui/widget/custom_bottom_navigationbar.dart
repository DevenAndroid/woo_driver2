import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:woo_driver/ui/screens/app_routes/app_routes.dart';

import '../../res/theme/theme.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
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
              GestureDetector(
                onTap: ()=> Get.toNamed(MyRoutes.homeScreen),
                child: Image.asset(
                  "assets/images/home.png",
                  color: AppTheme.appBackgroundColor,
                ),
              ),
              GestureDetector(
                onTap: ()=> Get.toNamed(MyRoutes.walletHistoryScreen),
                child: Image.asset(
                  "assets/images/wallet.png",
                  color: AppTheme.appBackgroundColor,
                ),
              ),
              GestureDetector(
                onTap: ()=> Get.toNamed(MyRoutes.profileHistoryScreen),
                child: Image.asset(
                  "assets/images/history.png",
                  color: AppTheme.appBackgroundColor,
                ),
              ),
              GestureDetector(
                onTap: ()=> Get.toNamed(MyRoutes.moreScreen),
                child: Image.asset(
                  "assets/images/menu.png",
                  color: AppTheme.appBackgroundColor,
                ),
              )
            ],
          ),
        ));
  }
}
