import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';

import '../../res/theme/theme.dart';
import '../widget/custom_button.dart';
import '../widget/custom_text_field.dart';
import 'app_routes/app_routes.dart';

class DocumentScreen extends StatefulWidget {
  const DocumentScreen({Key? key}) : super(key: key);

  @override
  State<DocumentScreen> createState() => _DocumentScreenState();
}

class _DocumentScreenState extends State<DocumentScreen> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _numberController = TextEditingController();
  final _registrationYearController = TextEditingController();
  final _experiencesController = TextEditingController();

  FilePickerResult? uploadCertificate1;
  String? uploadcertificateFileName1;
  PlatformFile? uploadcertificatePickedFile1;
  bool uploadcertificateLoading1 = false;
  File? uploadcertificateDisplay1;
  String? uploadcertificate1;



  FilePickerResult? uploadCertificate2;
  String? uploadcertificateFileName2;
  PlatformFile? uploadcertificatePickedFile2;
  bool uploadcertificateLoading2 = false;
  File? uploadcertificateDisplay2;
  String? uploadcertificate2;

  void uploadCertificateFunction1() async {
    try {
      setState(() {
        uploadcertificateLoading1 = true;
      });
      uploadCertificate1 = await FilePicker.platform.pickFiles(
          type: FileType.custom,
          allowMultiple: false,
          allowedExtensions: ['jpg', 'jpeg', 'png', 'pdf', 'docx', 'doc']);
      if (uploadCertificate1 != null) {
        uploadcertificateFileName1 = uploadCertificate1!.files.first.name;
        uploadcertificatePickedFile1 = uploadCertificate1!.files.first;
        uploadcertificateDisplay1 =
            File(uploadcertificatePickedFile1!.path.toString());




        List<int> uploadcertificateImage64 =
            uploadcertificateDisplay1!.readAsBytesSync();
        uploadcertificate1 = base64Encode(uploadcertificateImage64);

        print("Base 64 image===> $uploadcertificate1");

        if (kDebugMode) {
          print("File name $uploadcertificateFileName1");
        }
      }

      setState(() {
        uploadcertificateLoading1 = false;
      });
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }


  void uploadCertificateFunction2() async {
    try {
      setState(() {
        uploadcertificateLoading2 = true;
      });
      uploadCertificate2 = await FilePicker.platform.pickFiles(
          type: FileType.custom,
          allowMultiple: false,
          allowedExtensions: ['jpg', 'jpeg', 'png', 'pdf', 'docx', 'doc']);
      if (uploadCertificate2 != null) {
        uploadcertificateFileName2 = uploadCertificate2!.files.first.name;
        uploadcertificatePickedFile2 = uploadCertificate2!.files.first;
        uploadcertificateDisplay2 =
            File(uploadcertificatePickedFile2!.path.toString());

        List<int> uploadcertificateImage64 =
        uploadcertificateDisplay2!.readAsBytesSync();
        uploadcertificate2 = base64Encode(uploadcertificateImage64);

        print("Base 64 image===> $uploadcertificate2");

        if (kDebugMode) {
          print("File name $uploadcertificateFileName2");
        }
      }

      setState(() {
        uploadcertificateLoading2 = false;
      });
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

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
                "Document",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 20),
              ),
            )),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Vehicle Details",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: AppTheme.primaryColor),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            width: 40,
                            child: Divider(
                              height: 2,
                              thickness: 3,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  // height: MediaQuery.of(context).size.height * .65,
                  // width: MediaQuery.of(context).size.width,
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
                    children: [
                      // Material(
                      //   elevation: 1,
                      //   child: TextFormField(
                      //     autofocus: false,
                      //     decoration: InputDecoration(
                      //         contentPadding: const EdgeInsets.all(10),
                      //         fillColor: AppTheme.textBoxBackgroundColor,
                      //         filled: true,
                      //         labelText: "Model name",
                      //         labelStyle: const TextStyle(color: AppTheme.textColor),
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
                      //           child: Container(
                      //             margin: const EdgeInsets.only(right: 8.0),
                      //             child: Image.asset("assets/images/motorcycle.png"),
                      //           )
                      //
                      //         ),
                      //         border: InputBorder.none,
                      //         // hintText: 'Enter your number',
                      //         hintStyle: TextStyle(
                      //           color: Colors.grey[400],
                      //           fontSize:
                      //           MediaQuery.of(context).size.width * 0.040,
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
                        hintText: "Model name",
                        prefixChildIcon: Padding(
                            padding: const EdgeInsets.only(right: 4),
                            child: Image.asset("assets/images/motorcycle.png")),
                        keyboardType: TextInputType.text,
                        validator: MultiValidator([
                          RequiredValidator(errorText: 'Enter model name'),
                          MinLengthValidator(3,
                              errorText: "Minimum length is 3"),
                        ]),
                      ),

                      const SizedBox(
                        height: 20,
                      ),
                      // Material(
                      //   elevation: 1,
                      //   child: TextFormField(
                      //     autofocus: false,
                      //     decoration: InputDecoration(
                      //         contentPadding: const EdgeInsets.all(10),
                      //         fillColor: AppTheme.textBoxBackgroundColor,
                      //         filled: true,
                      //         labelText: "Vehicle Number",
                      //         labelStyle: const TextStyle(color: AppTheme.textColor),
                      //         // border: OutlineInputBorder(
                      //         //     borderRadius: BorderRadius.only(
                      //         //         topLeft: Radius.circular(10),
                      //         //         topRight: Radius.circular(10))),
                      //         prefixIcon: Container(
                      //             width: 30,
                      //             margin: const EdgeInsets.all(8),
                      //             decoration: BoxDecoration(
                      //               border: Border(
                      //                   right: BorderSide(
                      //                       color: Colors.grey.shade300)),
                      //             ),
                      //             child: Container(
                      //               margin: const EdgeInsets.only(right: 8.0),
                      //               child: Image.asset("assets/images/car.png"),
                      //             )
                      //
                      //         ),
                      //         border: InputBorder.none,
                      //         // hintText: 'Enter your number',
                      //         hintStyle: TextStyle(
                      //           color: Colors.grey[400],
                      //           fontSize:
                      //           MediaQuery.of(context).size.width * 0.040,
                      //         ),
                      //         focusColor: AppTheme.primaryColor,
                      //         hoverColor: AppTheme.primaryColor),
                      //     keyboardType: TextInputType.text,
                      //     // controller: _numberController,
                      //     cursorColor: AppTheme.primaryColor,
                      //   ),
                      // ),

                      CustomTextField(
                        controller: _numberController,
                        hintText: "Vehicle Number",
                        prefixChildIcon: Image.asset("assets/images/car.png"),
                        keyboardType: TextInputType.text,
                        validator: MultiValidator([
                          RequiredValidator(errorText: 'Enter vehicle number'),
                        ]),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // Material(
                      //   elevation: 1,
                      //   child: TextFormField(
                      //     autofocus: false,
                      //     decoration: InputDecoration(
                      //         contentPadding: const EdgeInsets.all(10),
                      //         fillColor: AppTheme.textBoxBackgroundColor,
                      //         filled: true,
                      //         labelText: "Registration year",
                      //         labelStyle: const TextStyle(color: AppTheme.textColor),
                      //         // border: OutlineInputBorder(
                      //         //     borderRadius: BorderRadius.only(
                      //         //         topLeft: Radius.circular(10),
                      //         //         topRight: Radius.circular(10))),
                      //         prefixIcon: Container(
                      //             width: 30,
                      //             margin: const EdgeInsets.all(8),
                      //             decoration: BoxDecoration(
                      //               border: Border(
                      //                   right: BorderSide(
                      //                       color: Colors.grey.shade300)),
                      //             ),
                      //             child: Container(
                      //               margin: const EdgeInsets.only(right: 8.0),
                      //               child: Icon(Icons.calendar_month_outlined,color: AppTheme.primaryColor,
                      //                 size: MediaQuery.of(context).size.width * 0.06,
                      //               )
                      //             )
                      //
                      //         ),
                      //         border: InputBorder.none,
                      //         // hintText: 'Enter your number',
                      //         hintStyle: TextStyle(
                      //           color: Colors.grey[400],
                      //           fontSize:
                      //           MediaQuery.of(context).size.width * 0.040,
                      //         ),
                      //         focusColor: AppTheme.primaryColor,
                      //         hoverColor: AppTheme.primaryColor),
                      //     keyboardType: TextInputType.number,
                      //     // controller: _numberController,
                      //     cursorColor: AppTheme.primaryColor,
                      //   ),
                      // ),
                      CustomTextField(
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        controller: _registrationYearController,
                        hintText: "Registration year",
                        prefixChildIcon: const Icon(
                          Icons.calendar_month_outlined,
                          color: AppTheme.primaryColor,
                        ),
                        keyboardType: TextInputType.number,
                        validator: MultiValidator([
                          RequiredValidator(
                              errorText: 'Enter registration year'),
                          MinLengthValidator(4,
                              errorText: 'Minimum 4 numbers required'),
                          MaxLengthValidator(4,
                              errorText: 'Maximum numbers length is 4')
                        ]),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: const [
                          Text(
                            "How Many Year of experience?",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // Material(
                      //   elevation: 1,
                      //   child: TextFormField(
                      //     autofocus: false,
                      //     decoration: InputDecoration(
                      //         contentPadding: const EdgeInsets.all(10),
                      //         fillColor: AppTheme.textBoxBackgroundColor,
                      //         filled: true,
                      //         labelText: "Experience Year",
                      //         labelStyle: const TextStyle(color: AppTheme.textColor),
                      //         // border: OutlineInputBorder(
                      //         //     borderRadius: BorderRadius.only(
                      //         //         topLeft: Radius.circular(10),
                      //         //         topRight: Radius.circular(10))),
                      //         prefixIcon: Container(
                      //             width: 30,
                      //             margin: const EdgeInsets.all(8),
                      //             decoration: BoxDecoration(
                      //               border: Border(
                      //                   right: BorderSide(
                      //                       color: Colors.grey.shade300)),
                      //             ),
                      //             child: Container(
                      //               margin: const EdgeInsets.only(right: 8.0),
                      //               child: Image.asset("assets/images/brifecase.png"),
                      //             )
                      //
                      //         ),
                      //         border: InputBorder.none,
                      //         // hintText: 'Enter your number',
                      //         hintStyle: TextStyle(
                      //           color: Colors.grey[400],
                      //           fontSize:
                      //           MediaQuery.of(context).size.width * 0.040,
                      //         ),
                      //         focusColor: AppTheme.primaryColor,
                      //         hoverColor: AppTheme.primaryColor),
                      //     keyboardType: TextInputType.text,
                      //     // controller: _numberController,
                      //     cursorColor: AppTheme.primaryColor,
                      //   ),
                      // ),

                      CustomTextField(
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        controller: _experiencesController,
                        hintText: "Experience Year",
                        prefixChildIcon:
                            Image.asset("assets/images/brifecase.png"),
                        keyboardType: TextInputType.number,
                        validator: MultiValidator([
                          RequiredValidator(errorText: 'Enter a number'),
                          MinLengthValidator(1,
                              errorText: 'Minimum 1 numbers required'),
                          MaxLengthValidator(2,
                              errorText: 'Maximum numbers length is 2')
                        ]),
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                               Text(
                                "Rc",
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              GestureDetector(
                                onTap: () async {
                                  uploadCertificateFunction1();
                                },
                                child: uploadcertificatePickedFile1 != null
                                    ? Stack(
                                      children: [Container(
                                          height:
                                              MediaQuery.of(context).size.height *
                                                  .15,
                                          width:
                                              MediaQuery.of(context).size.width *
                                                  .4,
                                          padding: const EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              color: AppTheme.appBackgroundColor,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                  image: FileImage(
                                                      uploadcertificateDisplay1!)),
                                              boxShadow: const [
                                                BoxShadow(
                                                  color: Color(0xffe3dfdf),
                                                  blurRadius: 10.0,
                                                ),
                                              ]),
                                          // child: Image.asset(
                                          //     "assets/images/add_file.png"),
                                        ),

                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: InkWell(
                                              onTap: () {
                                                setState(() {
                                                  uploadcertificatePickedFile1 =
                                                  null;
                                                  uploadcertificateDisplay1 =
                                                  null;
                                                });
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.black
                                                      .withOpacity(.6),
                                                  shape: BoxShape.circle,
                                                ),
                                                padding: const EdgeInsets.all(8),
                                                child: const Icon(
                                                  Icons.clear,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            )),]
                                    )
                                    : Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                .15,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .4,
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: AppTheme.appBackgroundColor,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            // image: DecorationImage(
                                            //     image: FileImage(
                                            //         uploadcertificateDisplay2!
                                            //     )
                                            // ),
                                            boxShadow: const [
                                              BoxShadow(
                                                color: Color(0xffe3dfdf),
                                                blurRadius: 10.0,
                                              ),
                                            ]),
                                        child: Image.asset(
                                            "assets/images/add_file.png"),
                                      ),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Insurance",
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              GestureDetector(
                                onTap: () async {
                                  uploadCertificateFunction2();
                                },
                                child: uploadcertificatePickedFile2 != null
                                    ? Stack(
                                    children: [Container(
                                      height:
                                      MediaQuery.of(context).size.height *
                                          .15,
                                      width:
                                      MediaQuery.of(context).size.width *
                                          .4,
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          color: AppTheme.appBackgroundColor,
                                          borderRadius:
                                          BorderRadius.circular(10),
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: FileImage(
                                                  uploadcertificateDisplay2!)),
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Color(0xffe3dfdf),
                                              blurRadius: 10.0,
                                            ),
                                          ]),
                                      // child: Image.asset(
                                      //     "assets/images/add_file.png"),
                                    ),

                                      Positioned(
                                          top: 0,
                                          left: 0,
                                          child: InkWell(
                                            onTap: () {
                                              setState(() {
                                                uploadcertificatePickedFile2 =
                                                null;
                                                uploadcertificateDisplay2 =
                                                null;
                                              });
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.black
                                                    .withOpacity(.6),
                                                shape: BoxShape.circle,
                                              ),
                                              padding: const EdgeInsets.all(8),
                                              child: const Icon(
                                                Icons.clear,
                                                color: Colors.white,
                                              ),
                                            ),
                                          )),]
                                )
                                    : Container(
                                  height:
                                  MediaQuery.of(context).size.height *
                                      .15,
                                  width:
                                  MediaQuery.of(context).size.width *
                                      .4,
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: AppTheme.appBackgroundColor,
                                      borderRadius:
                                      BorderRadius.circular(10),
                                      // image: DecorationImage(
                                      //     image: FileImage(
                                      //         uploadcertificateDisplay2!
                                      //     )
                                      // ),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Color(0xffe3dfdf),
                                          blurRadius: 10.0,
                                        ),
                                      ]),
                                  child: Image.asset(
                                      "assets/images/add_file.png"),
                                ),
                              )
                            ],
                          ),
                        ],
                      )
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
                //             BorderRadius.all(Radius.circular(10))),
                //         primary: AppTheme.primaryColor,
                //         padding: const EdgeInsets.symmetric(
                //             horizontal: 45, vertical: 15),
                //         textStyle:
                //         const TextStyle(fontWeight: FontWeight.bold)),
                //     onPressed: () {},
                //     child: const Text(
                //       "Save",
                //       style: TextStyle(fontWeight: FontWeight.bold),
                //     )),
                Align(
                  alignment: Alignment.center,
                  child: CustomButton(
                    buttonText: "Save",
                    onPress: () {
                      if (_formKey.currentState!.validate()) {
                        Get.toNamed(MyRoutes.moreScreen);
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
        ));
  }
}
