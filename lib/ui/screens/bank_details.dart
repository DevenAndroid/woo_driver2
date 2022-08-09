import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:woo_driver/ui/screens/profile_detail.dart';

import '../../res/theme/theme.dart';

class BankDetailsScreen extends StatefulWidget {
  const BankDetailsScreen({Key? key}) : super(key: key);

  @override
  State<BankDetailsScreen> createState() => _BankDetailsScreenState();
}

class _BankDetailsScreenState extends State<BankDetailsScreen> {
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
                  Get.to(const ProfileDetailScreen());
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
                const Text("Bank Details",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                const SizedBox(
                  height: 5,
                ),
                const SizedBox(
                  width: 45,
                  child: Divider(
                    height: 2,
                    thickness: 3,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppTheme.appBackgroundColor,
                  ),
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Bank Name",
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Material(
                        elevation: 1,
                        child: TextFormField(
                          autofocus: false,
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(10),
                              fillColor: AppTheme.textBoxBackgroundColor,
                              filled: true,
                              labelText: "Enter your bank name",
                              // border: OutlineInputBorder(
                              //     borderRadius: BorderRadius.only(
                              //         topLeft: Radius.circular(10),
                              //         topRight: Radius.circular(10))),
                              prefixIcon: Container(
                                  width: 30,
                                  margin: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    border: Border(
                                        right: BorderSide(
                                            color: Colors.grey.shade300)),
                                  ),
                                  child: Image.asset(
                                    "assets/images/bank.png",
                                    color: AppTheme.primaryColor,
                                  )),
                              border: InputBorder.none,
                              // hintText: 'Enter your number',
                              hintStyle: TextStyle(
                                color: Colors.grey[400],
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.040,
                              ),
                              focusColor: AppTheme.primaryColor,
                              hoverColor: AppTheme.primaryColor),
                          keyboardType: TextInputType.text,
                          // controller: _numberController,
                          cursorColor: AppTheme.primaryColor,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        "Account number",
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Material(
                        elevation: 1,
                        child: TextFormField(
                          autofocus: false,
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(10),
                              fillColor: AppTheme.textBoxBackgroundColor,
                              filled: true,
                              labelText: "Enter your account number",
                              // border: OutlineInputBorder(
                              //     borderRadius: BorderRadius.only(
                              //         topLeft: Radius.circular(10),
                              //         topRight: Radius.circular(10))),
                              prefixIcon: Container(
                                width: 30,
                                margin: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(
                                          color: Colors.grey.shade300)),
                                ),
                                child:  Image.asset(
                                  "assets/images/id.png",
                                  color: AppTheme.primaryColor,
                                )
                              ),
                              border: InputBorder.none,
                              // hintText: 'Enter your number',
                              hintStyle: TextStyle(
                                color: Colors.grey[400],
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.040,
                              ),
                              focusColor: AppTheme.primaryColor,
                              hoverColor: AppTheme.primaryColor),
                          keyboardType: TextInputType.number,
                          // controller: _numberController,
                          cursorColor: AppTheme.primaryColor,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      const Text(
                        "Re-enter Account number",
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Material(
                        elevation: 1,
                        child: TextFormField(
                          autofocus: false,
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(10),
                              fillColor: AppTheme.textBoxBackgroundColor,
                              filled: true,
                              labelText: "Enter your account numbe",
                              // border: OutlineInputBorder(
                              //     borderRadius: BorderRadius.only(
                              //         topLeft: Radius.circular(10),
                              //         topRight: Radius.circular(10))),
                              prefixIcon: Container(
                                width: 30,
                                margin: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(
                                          color: Colors.grey.shade300)),
                                ),
                                child:  Image.asset(
                                  "assets/images/id.png",
                                  color: AppTheme.primaryColor,
                                )
                              ),
                              border: InputBorder.none,
                              // hintText: 'Enter your number',
                              hintStyle: TextStyle(
                                color: Colors.grey[400],
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.040,
                              ),
                              focusColor: AppTheme.primaryColor,
                              hoverColor: AppTheme.primaryColor),
                          keyboardType: TextInputType.number,
                          // controller: _numberController,
                          cursorColor: AppTheme.primaryColor,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        "IFSC code",
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Material(
                        elevation: 1,
                        child: TextFormField(
                          autofocus: false,
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(10),
                              fillColor: AppTheme.textBoxBackgroundColor,
                              filled: true,
                              labelText: "Enter IFSC code",
                              // border: OutlineInputBorder(
                              //     borderRadius: BorderRadius.only(
                              //         topLeft: Radius.circular(10),
                              //         topRight: Radius.circular(10))),
                              prefixIcon: Container(
                                width: 30,
                                margin: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(
                                          color: Colors.grey.shade300)),
                                ),
                                child: Image.asset(
                                  "assets/images/ifsc.png",
                                  color: AppTheme.primaryColor,
                                )
                              ),
                              border: InputBorder.none,
                              // hintText: 'Enter your number',
                              hintStyle: TextStyle(
                                color: Colors.grey[400],
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.040,
                              ),
                              focusColor: AppTheme.primaryColor,
                              hoverColor: AppTheme.primaryColor),
                          keyboardType: TextInputType.text,
                          // controller: _numberController,
                          cursorColor: AppTheme.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 100,
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
