import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../res/theme/theme.dart';
import 'app_routes/app_routes.dart';
import 'home.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {


  List<Language> languages = [
    Language(
      title: "English",
    ),
    Language(
      title: "Maori",
    ),
    Language(
      title: "Latin",
    ),
    Language(
      title: "German",
    ),
    Language(
      title: "Tamil",
    ),
    Language(
      title: "Hindi",
    ),
  ];

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
                Get.toNamed(MyRoutes.moreScreen);
              },
            ),
            title: const Text(
              "Language",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 20),
            ),
          )),
      body: Container(
        margin: const EdgeInsets.all(15),
        child: Wrap(
          children: List.generate(languages.length, (index) => GestureDetector(
            onTap: () {
          for (var item in languages) {
          item.selected = false;
          }
          languages[index].selected = true;
          setState(() {});
          },
            child: Container(
              height: MediaQuery.of(context).size.height * .05,
              width: MediaQuery.of(context).size.width * .4,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color:languages[index].selected == true? AppTheme.primaryColor : AppTheme.appBackgroundColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xffe3dfdf),
                      blurRadius: 10.0,
                    ),
                  ]),
              child: Text(
                languages[index].title.toString(),
                style:  TextStyle(fontSize: 14,color: languages[index].selected != true? Colors.black : AppTheme.appBackgroundColor,),
              ),
            ),
          ),),
        ),
      ),
    );
  }
}

class Language {
  final String? title;
  bool? selected;

  Language({this.title, this.selected = false});
}
