import 'package:flutter/material.dart';
import 'package:get/get.dart';

// meaning page(choose language and the intro=> first page and second page)
class ChooseLanguageController extends GetxController {
  void changeLang(String codelang) {
    Locale locale = Locale(codelang);
    Get.updateLocale(locale);
  }
}
