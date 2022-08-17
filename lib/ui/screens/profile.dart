import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../res/theme/theme.dart';
import 'home.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * .12),
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
                  Get.to(const HomeScreen());
                },
              ),
              title: const Text(
                "History",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 20),
              ),
            )),
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
        body:Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 15),
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
                  children: [
                    Image.asset("assets/images/human.png",
                    height: 50,),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.person_outline_rounded,color: AppTheme.primaryColor,),
                            SizedBox(
                              width: 6,
                            ),
                            Text("Apolline Asan",style: TextStyle(fontSize: 14),),

                            Icon(Icons.edit),
                          ],
                        ),

                      ],
                    )
                  ],
                )

              ),


            ],
          ),
        )
    );
  }
}
