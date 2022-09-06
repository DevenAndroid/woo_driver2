import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:woo_driver/ui/screens/profile_detail.dart';

import '../../res/theme/theme.dart';
import '../widget/custom_button.dart';
import '../widget/custom_text_field.dart';
import 'app_routes/app_routes.dart';

class BankDetailsScreen extends StatefulWidget {
  const BankDetailsScreen({Key? key}) : super(key: key);

  @override
  State<BankDetailsScreen> createState() => _BankDetailsScreenState();
}

class _BankDetailsScreenState extends State<BankDetailsScreen> {
  final _bankNameController = TextEditingController();
  final _accountController = TextEditingController();
  final _reAccountController = TextEditingController();
  final _ifscController = TextEditingController();

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
            child: Form(
              key: _formKey,
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
                    height: 15,
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

                        CustomTextField(
                          controller: _bankNameController,
                          hintText: "Enter your bank name",
                          prefixChildIcon:
                              Image.asset("assets/images/bank.png"),
                          keyboardType: TextInputType.text,
                          validator:  MultiValidator([
                            RequiredValidator(errorText: 'Enter bank name'),
                            MinLengthValidator(3, errorText: "Minimum length is 8"),
                          ]),
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

                        CustomTextField(
                          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                          controller: _accountController,
                          hintText: "Enter your account number",
                          prefixChildIcon: Image.asset("assets/images/id.png"),
                          keyboardType: TextInputType.number,
                          validator:  MultiValidator([
                            RequiredValidator(errorText: 'Enter a number'),
                            MinLengthValidator(10, errorText: 'Minimum 10 numbers required'),
                            MaxLengthValidator(15, errorText: 'Maximum numbers length is 15')
                          ]),
                        ),

                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "Re-enter Account number",
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(
                          height: 10,
                        ),

                        CustomTextField(
                          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                          controller: _reAccountController,
                          hintText: "Enter your account number",
                          prefixChildIcon: Image.asset("assets/images/id.png"),
                          keyboardType: TextInputType.number,
                          validator: MultiValidator([
                            RequiredValidator(errorText: 'Enter a number'),
                            MinLengthValidator(10, errorText: 'Minimum 10 numbers required'),
                            MaxLengthValidator(15, errorText: 'Maximum numbers length is 15')
                          ]),
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

                        CustomTextField(
                          controller: _ifscController,
                          hintText: "Enter IFSC code",
                          prefixChildIcon: Image.asset("assets/images/id.png"),
                          keyboardType: TextInputType.text,
                          validator: MultiValidator([
                            RequiredValidator(errorText: 'Enter IFSC'),
                            MinLengthValidator(6, errorText: 'Minimum 6 numbers required'),
                            MaxLengthValidator(15, errorText: 'Maximum numbers length is 10')
                          ]),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                  ),

                  Align(
                    alignment: Alignment.center,
                    child: CustomButton(

                      width: 120,
                      buttonText: " Continue ",
                      onPress: () {
                        if (_formKey.currentState!.validate()) {
                          Get.toNamed(MyRoutes.bottomNavBarScreen);
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Data')),
                          );
                        }
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
