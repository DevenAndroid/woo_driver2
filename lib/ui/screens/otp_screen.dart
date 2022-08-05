import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import '../../res/theme/theme.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
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
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 26),
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
                    SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'OTP',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const SizedBox(
                      width: 20,
                      child: Divider(
                        height: 2,
                        thickness: 3,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Text(
                      'We have sent an OTP on +91 99845 45698',
                      textAlign: TextAlign.center,
                    ),

                    const SizedBox(
                      height: 30,
                    ),

                    OtpTextField(
                      focusedBorderColor: AppTheme.primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      numberOfFields: 4,
                      borderColor: Color(0xFF512DA8),
                      //set to true to show as box or false to show as dash
                      showFieldAsBox: true,
                      //runs when a code is typed in
                      onCodeChanged: (String code) {
                        //handle validation or checks here
                      },
                      //runs when every textfield is filled
                      onSubmit: (String verificationCode){
                        showDialog(
                            context: context,
                            builder: (context){
                              return AlertDialog(
                                title: Text("Verification Code"),
                                content: Text('Code entered is $verificationCode'),
                              );
                            }
                        );
                      }, // end onSubmit
                    ),

                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Resend OTP In "),
                        Text("00:20",style: TextStyle(color: AppTheme.primaryColor),)
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
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
                          "Verify & Proceed",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),

                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
