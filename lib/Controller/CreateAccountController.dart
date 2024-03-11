import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateAccountController extends GetxController {
  TextEditingController FirstNameText = TextEditingController();
  TextEditingController LastNameText = TextEditingController();
  TextEditingController UserNameText = TextEditingController();
  TextEditingController EmailText = TextEditingController();
  TextEditingController PhoneNumberText = TextEditingController();
  TextEditingController PasswordText = TextEditingController();
  RxBool flag = true.obs;
  Widget VisibleOrUnvisible() { // suffix icon in password text feild
    if (flag.value) {
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

  RxBool agree = true.obs;
  void AgreeOrNonAgree() { // check box controller mean agree with privicy or non agree
    if (agree.value == true)
      agree.value = false;
    else
      agree.value = true;
  }
}
