import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:marketstoreapp/ChooseLanguageWithIntrolocal.dart';
import 'package:marketstoreapp/View/AccountCreatedSuccess.dart';
import 'package:marketstoreapp/View/ConfirmEmail.dart';
import 'package:marketstoreapp/View/CreateAcount.dart';
import 'package:marketstoreapp/View/FirstPageBeginIntro.dart';
import 'package:marketstoreapp/View/Home.dart';
import 'package:marketstoreapp/View/InsideProduct.dart';
import 'package:marketstoreapp/View/LoginPage.dart';
import 'package:marketstoreapp/View/ResetEmail.dart';
import 'package:marketstoreapp/View/SecondPageBegin.dart';
import 'package:marketstoreapp/View/sportPage.dart';
import 'package:marketstoreapp/Widgets/buttomBar/buttombar.dart';
import 'View/chooselanguage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: Get.deviceLocale,
      translations: ChooseLanguagelocal(),
      //initialBinding: ChooseLanguageWithIntroBindings(),
      initialRoute: "/InsideProdcuts",
      home: BottomNavigationBarScreen(),
      getPages: [
        GetPage(
          name: "/",
          page: () => chooselanguage(),
          // binding: ChooseLanguageWithIntroBindings(),
        ),
        GetPage(
          name: "/FirstPageBegin",
          page: () => FirstPageBeginIntro(),
          //binding: ChooseLanguageWithIntroBindings(),
        ),
        GetPage(
          name: "/SecondPageBegin",
          page: () => SecondPageBeginIntro(),
          // binding: ChooseLanguageWithIntroBindings(),
        ),
        GetPage(
          name: "/LoginPage",
          page: () => LoginPage(),
          //binding: ChooseLanguageWithIntroBindings(),
        ),
        GetPage(
          name: "/ConfrimPaswword",
          page: () => ConfirmEmail(),
          // binding: ChooseLanguageWithIntroBindings(),
        ),
        GetPage(
          name: "/ResetAccount",
          page: () => ResetAccount(),
          // binding: ChooseLanguageWithIntroBindings(),
        ),
        GetPage(
          name: "/CreateAccount",
          page: () => CreateAccount(),
          //binding: bindingCreateAccount(),
        ),
        GetPage(
          name: "/AccountCreated",
          page: () => AccountCreateSuccess(),
          // binding: ChooseLanguageWithIntroBindings(),
        ),
        GetPage(
          name: "/DisplayProductAndCategory",
          page: () => BottomNavigationBarScreen(),
          // binding: ChooseLanguageWithIntroBindings(),
        ),
        GetPage(
          name: "/SportPage",
          page: () => SportPage(),
          // binding: ChooseLanguageWithIntroBindings(),
        ),
        GetPage(
          name: "/Home",
          page: () => Home(),
          // binding: ChooseLanguageWithIntroBindings(),
        ),
        GetPage(
          name: "/InsideProdcuts",
          page: () => InsideProducts(),
          // binding: ChooseLanguageWithIntroBindings(),
        ),
      ],
      // home: chooselanguage(),
    );
  }
}
