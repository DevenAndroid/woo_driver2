import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../res/theme/theme.dart';
import '../widget/custom_button.dart';
import 'app_routes/app_routes.dart';
import 'home.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
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
                  Get.to(const HomeScreen());
                },
              ),
              title: const Text(
                "Edit Profile",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 20),
              ),
            )),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .8,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.all(10),
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(children: [
                      Image.asset(
                        height: 150,
                        width: 150,
                        "assets/images/user2.png",
                      ),
                      Positioned(
                        bottom: 22,
                        right: 25,
                        child: Image.asset(
                          height: 50,
                          width: 50,
                          "assets/images/edit.png",
                        ),
                      )
                    ]),
                    Row(
                      children: const [
                        Text(
                          "Name",
                          style: TextStyle(fontSize: 16),
                        )
                      ],
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
                            labelText: "Enter your name",
                            labelStyle: const TextStyle(color: AppTheme.textColor),
                            // border: OutlineInputBorder(
                            //     borderRadius: BorderRadius.only(
                            //         topLeft: Radius.circular(10),
                            //         topRight: Radius.circular(10))),
                            prefixIcon: Container(
                              width: 30,
                              margin: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                border: Border(
                                    right: BorderSide(color: Colors.grey.shade300)),
                              ),
                              child: Icon(
                                Icons.person_outline_rounded,
                                color: AppTheme.primaryColor,
                                size: MediaQuery.of(context).size.width * 0.06,
                              ),
                            ),
                            border: InputBorder.none,
                            // hintText: 'Enter your number',
                            hintStyle: TextStyle(
                              color: Colors.grey[400],
                              fontSize: MediaQuery.of(context).size.width * 0.040,
                            ),
                            focusColor: AppTheme.primaryColor,
                            hoverColor: AppTheme.primaryColor),
                        keyboardType: TextInputType.text,
                        // controller: _numberController,
                        cursorColor: AppTheme.primaryColor,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        Text(
                          "Email",
                          style: TextStyle(fontSize: 16),
                        )
                      ],
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
                            labelText: "Enter your email",
                            labelStyle: const TextStyle(color: AppTheme.textColor),
                            // border: OutlineInputBorder(
                            //     borderRadius: BorderRadius.only(
                            //         topLeft: Radius.circular(10),
                            //         topRight: Radius.circular(10))),
                            prefixIcon: Container(
                              width: 30,
                              margin: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                border: Border(
                                    right: BorderSide(color: Colors.grey.shade300)),
                              ),
                              child: Icon(
                                Icons.mail_outline_rounded,
                                color: AppTheme.primaryColor,
                                size: MediaQuery.of(context).size.width * 0.06,
                              ),
                            ),
                            border: InputBorder.none,
                            // hintText: 'Enter your number',
                            hintStyle: TextStyle(
                              color: Colors.grey[400],
                              fontSize: MediaQuery.of(context).size.width * 0.040,
                            ),
                            focusColor: AppTheme.primaryColor,
                            hoverColor: AppTheme.primaryColor),
                        keyboardType: TextInputType.emailAddress,
                        // controller: _numberController,
                        cursorColor: AppTheme.primaryColor,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        Text(
                          "Mobile Number",
                          style: TextStyle(fontSize: 16),
                        )
                      ],
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
                            labelText: "Enter your mobile number",
                            labelStyle: const TextStyle(color: AppTheme.textColor),
                            // border: OutlineInputBorder(
                            //     borderRadius: BorderRadius.only(
                            //         topLeft: Radius.circular(10),
                            //         topRight: Radius.circular(10))),
                            prefixIcon: Container(
                              width: 30,
                              margin: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                border: Border(
                                    right: BorderSide(color: Colors.grey.shade300)),
                              ),
                              child: Icon(
                                Icons.phone,
                                color: AppTheme.primaryColor,
                                size: MediaQuery.of(context).size.width * 0.06,
                              ),
                            ),
                            border: InputBorder.none,
                            // hintText: 'Enter your number',
                            hintStyle: TextStyle(
                              color: Colors.grey[400],
                              fontSize: MediaQuery.of(context).size.width * 0.040,
                            ),
                            focusColor: AppTheme.primaryColor,
                            hoverColor: AppTheme.primaryColor),
                        keyboardType: TextInputType.number,
                        // controller: _numberController,
                        cursorColor: AppTheme.primaryColor,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        Text(
                          "Customers",
                          style: TextStyle(fontSize: 16),
                        )
                      ],
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
                            labelText: "Total customer",
                            labelStyle: const TextStyle(color: AppTheme.textColor),
                            // border: OutlineInputBorder(
                            //     borderRadius: BorderRadius.only(
                            //         topLeft: Radius.circular(10),
                            //         topRight: Radius.circular(10))),
                            prefixIcon: Container(
                              width: 30,
                              margin: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                border: Border(
                                    right: BorderSide(color: Colors.grey.shade300)),
                              ),
                              child: Icon(
                                Icons.people_sharp,
                                color: AppTheme.primaryColor,
                                size: MediaQuery.of(context).size.width * 0.06,
                              ),
                            ),
                            border: InputBorder.none,
                            // hintText: 'Enter your number',
                            hintStyle: TextStyle(
                              color: Colors.grey[400],
                              fontSize: MediaQuery.of(context).size.width * 0.040,
                            ),
                            focusColor: AppTheme.primaryColor,
                            hoverColor: AppTheme.primaryColor),
                        keyboardType: TextInputType.number,
                        // controller: _numberController,
                        cursorColor: AppTheme.primaryColor,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        Text(
                          "Experience",
                          style: TextStyle(fontSize: 16),
                        )
                      ],
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
                            labelText: "Experience Year",
                            labelStyle: const TextStyle(color: AppTheme.textColor),
                            // border: OutlineInputBorder(
                            //     borderRadius: BorderRadius.only(
                            //         topLeft: Radius.circular(10),
                            //         topRight: Radius.circular(10))),
                            prefixIcon: Container(
                              width: 30,
                              margin: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                border: Border(
                                    right: BorderSide(color: Colors.grey.shade300)),
                              ),
                              child: Icon(
                                Icons.work,
                                color: AppTheme.primaryColor,
                                size: MediaQuery.of(context).size.width * 0.06,
                              ),
                            ),
                            border: InputBorder.none,
                            // hintText: 'Enter your number',
                            hintStyle: TextStyle(
                              color: Colors.grey[400],
                              fontSize: MediaQuery.of(context).size.width * 0.040,
                            ),
                            focusColor: AppTheme.primaryColor,
                            hoverColor: AppTheme.primaryColor),
                        keyboardType: TextInputType.number,
                        // controller: _numberController,
                        cursorColor: AppTheme.primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // ElevatedButton(
              //     style: ElevatedButton.styleFrom(
              //         shape: const RoundedRectangleBorder(
              //             borderRadius:
              //             BorderRadius.all(Radius.circular(5))),
              //         primary: AppTheme.primaryColor,
              //         padding: const EdgeInsets.symmetric(
              //             horizontal: 35, vertical: 15),
              //         textStyle:
              //         const TextStyle(fontWeight: FontWeight.bold)),
              //     onPressed: () {},
              //     child: const Text(
              //       "Save changes",
              //       style: TextStyle(fontWeight: FontWeight.bold),
              //     )),
              Align(
                alignment: Alignment.center,
                child: CustomButton(
                  buttonText: "Save changes",
                  onPress: () {
                    Get.toNamed(MyRoutes.profileHistoryScreen);
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
