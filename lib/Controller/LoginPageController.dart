import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPageConroller extends GetxController {
  TextEditingController TextUserNameLogin = TextEditingController();
  TextEditingController textPasswordLogin = TextEditingController();
  RxBool flag = false.obs;
  Widget visibleOrUnvisble() {
    if (flag.value==true) {
      return IconButton(
        icon: Icon(Icons.visibility),
        onPressed: () {
          flag.value = false;
        },
      );
    } else {
      return IconButton(
        icon: Icon(Icons.visibility_off),
        onPressed: () {
          flag.value = true;
        },
      );
    }
  }
}
