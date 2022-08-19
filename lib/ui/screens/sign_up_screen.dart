import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:woo_driver/ui/widget/custom_button.dart';
import 'package:woo_driver/ui/widget/custom_text_field.dart';

import '../../res/theme/theme.dart';
import 'app_routes/app_routes.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool eyeHide = true;

  final _nameController = TextEditingController();
  final _numberController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .2,
                width: MediaQuery.of(context).size.width,
                color: AppTheme.primaryColor,
                child: const Center(
                    child: Text(
                  'LOGO',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 30),
                )),
              ),
            ],
          ),
        ),
        Positioned(
          top: 110,
          bottom: 0,
          right: 0,
          left: 0,
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              margin: const EdgeInsets.all(20),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Sign up',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const SizedBox(
                      width: 40,
                      child: Divider(
                        height: 2,
                        thickness: 3,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      'Hello !',
                      style:
                          TextStyle(fontSize: 28, color: AppTheme.primaryColor),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Sign up',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          '  to get started.',
                          style: TextStyle(color: AppTheme.textColor),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: const [Text("User Name")],
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
                    //         labelText: "Enter your name",
                    //         // border: OutlineInputBorder(
                    //         //     borderRadius: BorderRadius.only(
                    //         //         topLeft: Radius.circular(10),
                    //         //         topRight: Radius.circular(10))),
                    //         prefixIcon: Container(
                    //           width: 30,
                    //           margin: const EdgeInsets.all(8),
                    //           decoration: BoxDecoration(
                    //             border: Border(
                    //                 right: BorderSide(
                    //                     color: Colors.grey.shade300)),
                    //           ),
                    //           child: Icon(
                    //             Icons.person_outline_rounded,
                    //             color: AppTheme.primaryColor,
                    //             size: MediaQuery.of(context).size.width * 0.06,
                    //           ),
                    //         ),
                    //         border: InputBorder.none,
                    //         // hintText: 'Enter your number',
                    //         hintStyle: TextStyle(
                    //           color: Colors.grey[400],
                    //           fontSize:
                    //               MediaQuery.of(context).size.width * 0.040,
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
                        hintText: "Enter your name",
                        prefixChildIcon: Icon(
                          Icons.person_outline_rounded,
                          color: AppTheme.primaryColor,
                        ),
                    keyboardType: TextInputType.text,),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [Text("Mobile Number")],
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
                    //         labelText: "Enter your number",
                    //         // border: OutlineInputBorder(
                    //         //     borderRadius: BorderRadius.only(
                    //         //         topLeft: Radius.circular(10),
                    //         //         topRight: Radius.circular(10))),
                    //         prefixIcon: Container(
                    //           width: 30,
                    //           margin: const EdgeInsets.all(8),
                    //           decoration: BoxDecoration(
                    //             border: Border(
                    //                 right: BorderSide(
                    //                     color: Colors.grey.shade300)),
                    //           ),
                    //           child: Icon(
                    //             Icons.phone,
                    //             color: AppTheme.primaryColor,
                    //             size: MediaQuery.of(context).size.width * 0.06,
                    //           ),
                    //         ),
                    //         border: InputBorder.none,
                    //         // hintText: 'Enter your number',
                    //         hintStyle: TextStyle(
                    //           color: Colors.grey[400],
                    //           fontSize:
                    //               MediaQuery.of(context).size.width * 0.040,
                    //         ),
                    //         focusColor: AppTheme.primaryColor,
                    //         hoverColor: AppTheme.primaryColor),
                    //     keyboardType: TextInputType.number,
                    //     // controller: _numberController,
                    //     cursorColor: AppTheme.primaryColor,
                    //   ),
                    // ),
                    CustomTextField(
                      controller: _nameController,
                      hintText: "Enter your number",
                      prefixChildIcon: Icon(
                        Icons.phone,
                        color: AppTheme.primaryColor,
                      ),
                      keyboardType: TextInputType.text,),

                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          "Verify Your Number",
                          style: TextStyle(color: AppTheme.primaryColor),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: const [Text("Email ID")],
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
                    //         labelText: "Enter your Email",
                    //         // border: OutlineInputBorder(
                    //         //     borderRadius: BorderRadius.only(
                    //         //         topLeft: Radius.circular(10),
                    //         //         topRight: Radius.circular(10))),
                    //         prefixIcon: Container(
                    //           width: 30,
                    //           margin: const EdgeInsets.all(8),
                    //           decoration: BoxDecoration(
                    //             border: Border(
                    //                 right: BorderSide(
                    //                     color: Colors.grey.shade300)),
                    //           ),
                    //           child: Icon(
                    //             Icons.email_outlined,
                    //             color: AppTheme.primaryColor,
                    //             size: MediaQuery.of(context).size.width * 0.06,
                    //           ),
                    //         ),
                    //         border: InputBorder.none,
                    //         // hintText: 'Enter your number',
                    //         hintStyle: TextStyle(
                    //           color: Colors.grey[400],
                    //           fontSize:
                    //               MediaQuery.of(context).size.width * 0.040,
                    //         ),
                    //         focusColor: AppTheme.primaryColor,
                    //         hoverColor: AppTheme.primaryColor),
                    //     keyboardType: TextInputType.emailAddress,
                    //     // controller: _numberController,
                    //     cursorColor: AppTheme.primaryColor,
                    //   ),
                    // ),
                    CustomTextField(
                      controller: _nameController,
                      hintText: "Enter your Email",
                      prefixChildIcon: Icon(
                        Icons.mail_outline,
                        color: AppTheme.primaryColor,
                      ),
                      keyboardType: TextInputType.text,),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [Text("Password")],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // Material(
                    //   elevation: 1,
                    //   child: TextFormField(
                    //     obscureText: eyeHide,
                    //     autofocus: false,
                    //     decoration: InputDecoration(
                    //         contentPadding: const EdgeInsets.all(10),
                    //         fillColor: AppTheme.textBoxBackgroundColor,
                    //         filled: true,
                    //         labelText: "Enter your Password",
                    //         // border: OutlineInputBorder(
                    //         //     borderRadius: BorderRadius.only(
                    //         //         topLeft: Radius.circular(10),
                    //         //         topRight: Radius.circular(10))),
                    //         prefixIcon: Container(
                    //           width: 30,
                    //           margin: const EdgeInsets.all(8),
                    //           decoration: BoxDecoration(
                    //             border: Border(
                    //                 right: BorderSide(
                    //                     color: Colors.grey.shade300)),
                    //           ),
                    //           child: Icon(
                    //             Icons.lock_outline,
                    //             color: AppTheme.primaryColor,
                    //             size: MediaQuery.of(context).size.width * 0.06,
                    //           ),
                    //         ),
                    //         suffixIcon: InkWell(
                    //             onTap: () {
                    //               setState(() {
                    //                 eyeHide = !eyeHide;
                    //               });
                    //             },
                    //             child: eyeHide == true
                    //                 ? const Icon(Icons.remove_red_eye_outlined)
                    //                 : const Icon(
                    //                     Icons.visibility_off_outlined)),
                    //         border: InputBorder.none,
                    //         // hintText: 'Enter your number',
                    //         hintStyle: TextStyle(
                    //           color: Colors.grey[400],
                    //           fontSize:
                    //               MediaQuery.of(context).size.width * 0.040,
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
                      hintText: "Enter your Password",
                      prefixChildIcon: Icon(
                        Icons.lock_outline,
                        color: AppTheme.primaryColor,
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye_outlined,
                        color: AppTheme.primaryColor,
                      ),
                      keyboardType: TextInputType.text,),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    // ElevatedButton(
                    //     style: ElevatedButton.styleFrom(
                    //         shape: const RoundedRectangleBorder(
                    //             borderRadius:
                    //                 BorderRadius.all(Radius.circular(5))),
                    //         primary: AppTheme.primaryColor,
                    //         padding: const EdgeInsets.symmetric(
                    //             horizontal: 35, vertical: 15),
                    //         textStyle:
                    //             const TextStyle(fontWeight: FontWeight.bold)),
                    //     onPressed: () {},
                    //     child: const Text(
                    //       "Sign up",
                    //       style: TextStyle(fontWeight: FontWeight.bold),
                    //     )),
                    CustomButton(
                      height: 50,
                      width: 150,
                      buttonText: "Sign up",
                      onPress: () {
                        Get.toNamed(MyRoutes.appDetailScreen);
                      },
                    ),

                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .3,
                          child: const Divider(
                            thickness: 2,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "Or",
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .3,
                          child: const Divider(
                            thickness: 2,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.rectangle,
                          ),
                          child: Image.asset("assets/images/fb.png",
                              fit: BoxFit.cover),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.rectangle,
                          ),
                          child: Image.asset("assets/images/google.png",
                              fit: BoxFit.cover),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Don't have an account?",
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 45,
                        ),
                        Text(
                          ' Sign up',
                          style: TextStyle(
                            color: AppTheme.primaryColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
