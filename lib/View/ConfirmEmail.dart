import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketstoreapp/View/ResetEmail.dart';
import 'package:marketstoreapp/View/LoginPage.dart';
import 'package:marketstoreapp/Controller/ConfirmEmailController.dart';
import 'package:marketstoreapp/Sliding.dart';
import 'package:marketstoreapp/convertcolor.dart';

class ConfirmEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ConfirmEmailController controller = Get.put(ConfirmEmailController());
    Color PublicColor = HexColor("#109cfe");
    return Scaffold(
      body: Container(
        //main Container
        width: double.infinity,
        height: double.infinity,
        //margin: EdgeInsets.only(top: 150),
        child: Column(children: [
          // main Column contain remove icon and another column contain remainig widgets
          Container(
            // close Icon widget
            margin: EdgeInsets.fromLTRB(300, 50, 0, 0),
            child: IconButton(
              icon: Icon(Icons.close, color: Colors.grey[400]),
              onPressed: () {
                Navigator.push(
                  context,
                  Sliding(Page:LoginPage()),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Column(
              // conatin all Texts and the textField and mateiralButton
              children: [
                Container(
                  margin: EdgeInsets.only(right: 40),
                  width: 300,
                  height: 65,
                  child: Text(
                    //ForgetPassword
                    "tenText".tr,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  //Don't worry -------- line
                  margin: EdgeInsets.only(left: 25),
                  width: 400,
                  child: Text("elevenText".tr,
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 12,
                      )),
                ),
                Container(
                  //email and we will send --------
                  margin: EdgeInsets.only(left: 25),
                  width: 400,
                  child: Text("tweleveText".tr,
                      style: TextStyle(color: Colors.grey[400], fontSize: 12)),
                ),
                Container(
                  // text field
                  width: 350,
                  height: 40,
                  margin: EdgeInsets.only(top: 50),
                  child: TextField(
                    controller: controller.ConfirmEmailTextField,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.send,
                        color: PublicColor,
                        size: 20,
                      ),
                      hintText: 'E_mail',
                      contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      hintStyle: TextStyle(
                        fontSize: 10,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: PublicColor,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  //material button
                  margin: EdgeInsets.only(top: 40),
                  width: 350,
                  child: MaterialButton(
                    onPressed: () {
                         Navigator.push(
                  context,
                  Sliding(Page:ResetAccount()),
                );
                    },
                    color: PublicColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      "Sumbit",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
