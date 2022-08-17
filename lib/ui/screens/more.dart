import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../res/theme/theme.dart';
import 'home.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
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
              "LOGO",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 28),
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
                children: const [
                  Icon(Icons.person_outline_rounded,color: AppTheme.primaryColor,),
                  SizedBox(
                    width: 10,
                  ),
                  Text("|",style: TextStyle(fontSize: 22,color: AppTheme.dividerColor,),),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Profile",style: TextStyle(fontSize: 14,),),
                  Expanded(child: SizedBox(),),
                  Icon(Icons.arrow_forward_ios_outlined,size: 14,)
                ],
              ),

            ),
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
                children: const [
                  Icon(Icons.text_snippet_outlined,color: AppTheme.primaryColor,),
                  SizedBox(
                    width: 10,
                  ),
                  Text("|",style: TextStyle(fontSize: 22,color: AppTheme.dividerColor,),),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Document",style: TextStyle(fontSize: 14,),),
                  Expanded(child: SizedBox(),),
                  Icon(Icons.arrow_forward_ios_outlined,size: 14,)
                ],
              ),

            ),
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
                  Image.asset("assets/images/language.png",),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text("|",style: TextStyle(fontSize: 22,color: AppTheme.dividerColor,),),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text("Language",style: TextStyle(fontSize: 14,),),
                  const Expanded(child: SizedBox(),),
                  const Icon(Icons.arrow_forward_ios_outlined,size: 14,)
                ],
              ),

            ),
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
                children: const [
                  Icon(Icons.lock_open_rounded,color: AppTheme.primaryColor,),
                  SizedBox(
                    width: 10,
                  ),
                  Text("|",style: TextStyle(fontSize: 22,color: AppTheme.dividerColor,),),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Privacy Policy",style: TextStyle(fontSize: 14,),),
                  Expanded(child: SizedBox(),),
                  Icon(Icons.arrow_forward_ios_outlined,size: 14,)
                ],
              ),

            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 2,
              color: AppTheme.dividerColor,
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    children: const [
                      Icon(Icons.share,color: AppTheme.primaryColor,),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Invite friends",style: TextStyle(fontSize: 14,),),

                    ],
                  ),

                ),Container(
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
                    children: const [
                      Icon(Icons.phone,color: AppTheme.primaryColor,),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Contact us",style: TextStyle(fontSize: 14,),),

                    ],
                  ),

                ),
              ],
            )

          ],
        ),
      )
    );
  }
}
