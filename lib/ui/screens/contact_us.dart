import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../res/theme/theme.dart';
import '../widget/custom_button.dart';
import '../widget/custom_text_field.dart';
import 'app_routes/app_routes.dart';
import 'home.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _dataController = TextEditingController();

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
                "Contact Us",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 20),
              ),
            )),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 45,
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: Image.asset("assets/images/contact_us.png")),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      const Expanded(
                          child: Text(
                        "Lorem Ipsum Dolor Sit Amet,Consectetur Adipiscing Elit,",
                        style: TextStyle(fontSize: 16),
                      )),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Contact us",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppTheme.primaryColor),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // Material(
                  //   elevation: 1,
                  //   child: TextFormField(
                  //     autofocus: false,
                  //     decoration: InputDecoration(
                  //         contentPadding: const EdgeInsets.all(10),
                  //         fillColor: AppTheme.textBoxBackgroundColor,
                  //         filled: true,
                  //         labelText: "Your name",
                  //         labelStyle: const TextStyle(color: AppTheme.textColor,fontSize: 12),
                  //         // border: OutlineInputBorder(
                  //         //     borderRadius: BorderRadius.only(
                  //         //         topLeft: Radius.circular(10),
                  //         //         topRight: Radius.circular(10))),
                  //         prefixIcon: Container(
                  //             width: 30,
                  //             margin: const EdgeInsets.all(8),
                  //             decoration: BoxDecoration(
                  //               border: Border(
                  //                   right:
                  //                       BorderSide(color: Colors.grey.shade300)),
                  //             ),
                  //             child: Container(
                  //               margin: const EdgeInsets.only(right: 8.0),
                  //               child:
                  //                  Icon(Icons.person_outline_rounded,color: AppTheme.primaryColor,)
                  //             )),
                  //         border: InputBorder.none,
                  //         // hintText: 'Enter your number',
                  //         hintStyle: TextStyle(
                  //           color: Colors.grey[400],
                  //           fontSize: MediaQuery.of(context).size.width * 0.040,
                  //         ),
                  //         focusColor: AppTheme.primaryColor,
                  //         hoverColor: AppTheme.primaryColor),
                  //     keyboardType: TextInputType.text,
                  //     // controller: _numberController,
                  //     cursorColor: AppTheme.primaryColor,
                  //   ),
                  // ),
                  CustomTextField(
                    controller: _nameController,
                    hintText: "Your name",
                    prefixChildIcon: const Icon(
                      Icons.person_outline_outlined,
                      color: AppTheme.primaryColor,
                    ),
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Filed is required';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  const SizedBox(
                    height: 10,
                  ),
                  // Material(
                  //   elevation: 1,
                  //   child: TextFormField(
                  //     autofocus: false,
                  //     decoration: InputDecoration(
                  //         contentPadding: const EdgeInsets.all(10),
                  //         fillColor: AppTheme.textBoxBackgroundColor,
                  //         filled: true,
                  //         labelText: "Email",
                  //         labelStyle: const TextStyle(
                  //             color: AppTheme.textColor, fontSize: 12),
                  //         // border: OutlineInputBorder(
                  //         //     borderRadius: BorderRadius.only(
                  //         //         topLeft: Radius.circular(10),
                  //         //         topRight: Radius.circular(10))),
                  //         prefixIcon: Container(
                  //             width: 30,
                  //             margin: const EdgeInsets.all(8),
                  //             decoration: BoxDecoration(
                  //               border: Border(
                  //                   right:
                  //                       BorderSide(color: Colors.grey.shade300)),
                  //             ),
                  //             child: Container(
                  //                 margin: const EdgeInsets.only(right: 8.0),
                  //                 child: Icon(
                  //                   Icons.email_outlined,
                  //                   color: AppTheme.primaryColor,
                  //                 ))),
                  //         border: InputBorder.none,
                  //         // hintText: 'Enter your number',
                  //         hintStyle: TextStyle(
                  //           color: Colors.grey[400],
                  //           fontSize: MediaQuery.of(context).size.width * 0.040,
                  //         ),
                  //         focusColor: AppTheme.primaryColor,
                  //         hoverColor: AppTheme.primaryColor),
                  //     keyboardType: TextInputType.text,
                  //     // controller: _numberController,
                  //     cursorColor: AppTheme.primaryColor,
                  //   ),
                  // ),
                  CustomTextField(
                    controller: _emailController,
                    hintText: "Email",
                    prefixChildIcon: const Icon(
                      Icons.email_outlined,
                      color: AppTheme.primaryColor,
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Filed is required';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  const SizedBox(
                    height: 10,
                  ),
                  // Material(
                  //   elevation: 1,
                  //   child: TextFormField(
                  //     autofocus: false,
                  //     decoration: InputDecoration(
                  //         contentPadding: const EdgeInsets.all(10),
                  //         fillColor: AppTheme.textBoxBackgroundColor,
                  //         filled: true,
                  //         labelText: "What do you tell us about?",
                  //         labelStyle: const TextStyle(
                  //             color: AppTheme.textColor, fontSize: 12),
                  //         // border: OutlineInputBorder(
                  //         //     borderRadius: BorderRadius.only(
                  //         //         topLeft: Radius.circular(10),
                  //         //         topRight: Radius.circular(10))),
                  //         prefixIcon: Container(
                  //             width: 30,
                  //             margin: const EdgeInsets.all(8),
                  //             decoration: BoxDecoration(
                  //               border: Border(
                  //                   right:
                  //                       BorderSide(color: Colors.grey.shade300)),
                  //             ),
                  //             child: Container(
                  //                 margin: const EdgeInsets.only(right: 8.0),
                  //                 child: Icon(
                  //                   Icons.message,
                  //                   color: AppTheme.primaryColor,
                  //                 ))),
                  //         border: InputBorder.none,
                  //         // hintText: 'Enter your number',
                  //         hintStyle: TextStyle(
                  //           color: Colors.grey[400],
                  //           fontSize: MediaQuery.of(context).size.width * 0.040,
                  //         ),
                  //         focusColor: AppTheme.primaryColor,
                  //         hoverColor: AppTheme.primaryColor),
                  //     keyboardType: TextInputType.text,
                  //     // controller: _numberController,
                  //     cursorColor: AppTheme.primaryColor,
                  //   ),
                  // ),
                  CustomTextField(
                    controller: _dataController,
                    hintText: "What do you tell us about?",
                    prefixChildIcon: const Icon(
                      Icons.message,
                      color: AppTheme.primaryColor,
                    ),
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Filed is required';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 40,
                  ),

                  // Align(
                  //   alignment: Alignment.center,
                  //   child: ElevatedButton(
                  //       style: ElevatedButton.styleFrom(
                  //           shape: const RoundedRectangleBorder(
                  //               borderRadius:
                  //               BorderRadius.all(Radius.circular(5))),
                  //           primary: AppTheme.primaryColor,
                  //           padding: const EdgeInsets.symmetric(
                  //               horizontal: 35, vertical: 15),
                  //           textStyle:
                  //           const TextStyle(fontWeight: FontWeight.bold)),
                  //       onPressed: () {},
                  //       child: const Text(
                  //         "Save",
                  //         style: TextStyle(fontWeight: FontWeight.bold),
                  //       )),
                  // ),
                  Align(
                    alignment: Alignment.center,
                    child: CustomButton(
                      buttonText: "Save",
                      onPress: () {
                        if (_formKey.currentState!.validate()) {
                          Get.toNamed(MyRoutes.homeScreen);
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Data')),
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
