import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../res/theme/theme.dart';
import 'app_routes/app_routes.dart';
import 'home.dart';

class MyWalletScreen extends StatefulWidget {
  const MyWalletScreen({Key? key}) : super(key: key);

  @override
  State<MyWalletScreen> createState() => _MyWalletScreenState();
}

class _MyWalletScreenState extends State<MyWalletScreen> {
// var time = "";
// var format = DateFormat.yMd('yyyy, MMMM, dd');
//   @override
//   void initState() {
//     super.initState();
//     print(DateTime.now());
//     var time1 = DateTime.now();
//     time = format.format(DateTime.now());
//     print(time);
//   }

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
            leading: GestureDetector(
              child: const Icon(Icons.arrow_back_ios),
              onTap: () {
                Get.toNamed(MyRoutes.bottomNavBarScreen);
              },
            ),
            title: const Text(
              "My Wallet",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 16),
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
      body: Container(
        color: Color(0xfff1f1f1),
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
                padding: const EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height * .13,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: AppTheme.appBackgroundColor,
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage(
                        "assets/images/rectangle_box.png",
                      ),
                      fit: BoxFit.fill,
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "\$1200",
                      style: TextStyle(
                          fontSize: 30, color: AppTheme.appBackgroundColor),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Available Balance",
                      style: TextStyle(
                          fontSize: 16, color: AppTheme.appBackgroundColor),
                    ),
                  ],
                )),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Transactions",
                    style:
                        TextStyle(fontSize: 16, color: AppTheme.primaryColor),
                  ),
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
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 7,
                physics: AlwaysScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 10),
                          height: MediaQuery.of(context).size.height * .09,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppTheme.appBackgroundColor

                          ),
                          child: ListTile(
                            leading: Image.asset(
                              'assets/images/human2.png',
                            ),
                            title: const Text(
                              "Ian Somerhalder",
                              style: TextStyle(fontSize: 14),
                            ),
                            subtitle: const Text(
                              "22:21, 21 sept 2021",
                              style: TextStyle(fontSize: 12),
                            ),
                            trailing: const Text("\$200",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: AppTheme.primaryColor)),
                          )),

                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
