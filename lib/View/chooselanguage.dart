import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:marketstoreapp/Controller/ChooseLanguageController.dart';
import 'package:marketstoreapp/Sliding.dart';
import 'package:marketstoreapp/View/FirstPageBeginIntro.dart';
import 'package:marketstoreapp/convertcolor.dart';

class chooselanguage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ChooseLanguageController controller = Get.put(ChooseLanguageController());
    return Scaffold(
        body: Container(
      margin: EdgeInsets.only(top: 40),
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          Container(child: Lottie.asset("Animations/language.json")),
          Container(
            // the first button choose language => arabic
            margin: EdgeInsets.only(top: 40),
            width: 200,
            height: 70,
            child: MaterialButton(
              color: HexColor("#4889f4"),
              onPressed: () {
                controller.changeLang("ar".tr);
                Navigator.push(
                  context,
                  Sliding(Page: FirstPageBeginIntro()),
                );
              },
              child: Row(
                //inside the button contain (the type of the language and the sybmol of it)
                children: [
                  Container(
                      margin: EdgeInsets.only(right: 60),
                      child: Image.asset(
                          "images/Change language with begin images/ArabicIcon.png",
                          width: 40)),
                  Text("العربية", style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
            ),
          ),
          Container(
            // the second button point to the second language is English
            margin: EdgeInsets.only(top: 35),
            width: 200,
            height: 70,
            child: MaterialButton(
              onPressed: () {
                controller.changeLang("en".tr);
                Navigator.push(
                  context,
                  Sliding(Page: FirstPageBeginIntro()),
                );
              },
              color: HexColor("#ececec"),
              child: Row(
                // inside of the material button which point to English language
                children: [
                  Container(
                      margin: EdgeInsets.only(right: 60),
                      child: Image.asset(
                          "images/Change language with begin images/EnglishIcon.png",
                          width: 40)),
                  Text(
                    "English",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ),
          // Container(
          //   // pointing to material button using to move to another page
          //   width: 300,
          //   height: 50,
          //   margin: EdgeInsets.only(top: 40),
          //   child: MaterialButton(
          //     onPressed: () {},
          //     child: Icon(Icons.arrow_forward),
          //     color: Colors.blue[500],
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(50),
          //     ),
          //   ),
          // ),
        ],
      ),
    ));
  }
}
