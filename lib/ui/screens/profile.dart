import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:woo_driver/ui/screens/app_routes/app_routes.dart';

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
              // leading: GestureDetector(
              //   child: const Icon(Icons.arrow_back_ios),
              //   onTap: () {
              //     Get.toNamed(MyRoutes.bottomNavBarScreen);
              //   },
              // ),
              title: const Text(
                "History",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 20),
              ),
            )),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Column(
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
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/human.png",
                                height: 60,
                                width: 50,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: const [
                                            Icon(
                                              Icons.person_outline_rounded,
                                              color: AppTheme.primaryColor,
                                            ),
                                            SizedBox(
                                              width: 6,
                                            ),
                                            Text(
                                              "Apolline Asan",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        GestureDetector(
                                          onTap: (){
                                            Get.toNamed(MyRoutes.editProfileScreen);

                                          },
                                            child: Image.asset("assets/images/edit.png"))
                                      ],
                                    ),
                                    Row(
                                      children: const [
                                        Icon(
                                          Icons.mail_outline,
                                          color: AppTheme.primaryColor,
                                        ),
                                        SizedBox(
                                          width: 6,
                                        ),
                                        Text(
                                          "@apolineasan@gmail.com",
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: const [
                                        Icon(
                                          Icons.phone,
                                          color: AppTheme.primaryColor,
                                        ),
                                        SizedBox(
                                          width: 6,
                                        ),
                                        Text(
                                          "+34 287476746",
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: const BoxDecoration(
                                color: AppTheme.boxColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            padding: const EdgeInsets.only(
                                right: 50, left: 50, top: 15, bottom: 15),
                            // color: AppTheme.boxColor,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: const [
                                    Text(
                                      "Customers",
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "278",
                                      style: TextStyle(
                                          fontSize: 14,
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
                                      "Experience",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "7 Month",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: AppTheme.primaryColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Reviews",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500)),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: 45,
                        child: Divider(
                          height: 2,
                          thickness: 3,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(

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
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Image.asset("assets/images/user.png")
                                ],
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text(
                                          "Eric Widget",
                                          style: TextStyle(fontSize: 14
                                          ,
                                          color: Color(0xff3D3D3D)),
                                        ),
                                        Text(
                                          "21 sept 2021",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: AppTheme.textColor),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        RatingBar.builder(
                                          itemSize: 20,
                                          initialRating: 3,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemPadding:
                                              const EdgeInsets.symmetric(
                                                  horizontal: 0.0),
                                          itemBuilder: (context, _) =>
                                              const Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          },
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        const Expanded(
                                            child: Text(
                                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: AppTheme.textColor),
                                        ))
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ));
  }
}
