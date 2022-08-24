import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:woo_driver/ui/screens/job_preferences.dart';

import '../../res/theme/theme.dart';
import '../widget/custom_button.dart';
import '../widget/custom_text_field.dart';
import 'app_routes/app_routes.dart';

class ProfileDetailScreen extends StatefulWidget {
  const ProfileDetailScreen({Key? key}) : super(key: key);

  @override
  State<ProfileDetailScreen> createState() => _ProfileDetailScreenState();
}

class _ProfileDetailScreenState extends State<ProfileDetailScreen> {
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();

  final _formKey = GlobalKey<FormState>();


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
                  Get.to(const JobPreferencesScreen());
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
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("Profile Details",
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
                          "First Name",
                          style: TextStyle(fontSize: 16),
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
                        //             size:
                        //                 MediaQuery.of(context).size.width * 0.06,
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
                          controller: _firstNameController,
                          hintText: "Enter your name",
                          prefixChildIcon: const Icon(
                            Icons.person_outline_rounded,
                            color: AppTheme.primaryColor,
                          ),
                          keyboardType: TextInputType.text,
                          validator: MultiValidator([
                            RequiredValidator(errorText: 'Enter a name'),
                            MinLengthValidator(3, errorText: "Minimum length is 3")
                          ]),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "Last Name",
                          style: TextStyle(fontSize: 16),
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
                        //             size:
                        //                 MediaQuery.of(context).size.width * 0.06,
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
                          controller: _lastNameController,
                          hintText: "Enter your name",
                          prefixChildIcon: const Icon(
                            Icons.person_outline_rounded,
                            color: AppTheme.primaryColor,
                          ),
                          keyboardType: TextInputType.text,
                          validator: MultiValidator([
                            RequiredValidator(errorText: 'Enter a last name'),
                            MinLengthValidator(3, errorText: "Minimum length is 3"),

                          ]),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 250,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: CustomButton(
                      height: 50,
                      width: 150,
                      buttonText: " Continue ",
                      onPress: () {
                        if (_formKey.currentState!.validate()) {
                          Get.toNamed(MyRoutes.bankDetailsScreen);
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Data')),
                          );
                        }

                      },
                    ),
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
                  //         " Continue ",
                  //         style: TextStyle(
                  //             fontWeight: FontWeight.w500, fontSize: 14),
                  //       )),
                  // ),
                ],
              ),
            ),
          ),
        ));
  }
}
