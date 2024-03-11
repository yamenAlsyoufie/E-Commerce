import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:lottie/lottie.dart';
import 'package:marketstoreapp/View/LoginPage.dart';
import 'package:marketstoreapp/Sliding.dart';
import 'package:marketstoreapp/convertcolor.dart';

class AccountCreateSuccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color PublicColor = HexColor("#109cfe");
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            Lottie.asset("Animations/CreateAccount/CreateAccountSuccess.json"),
            Center(
                child: Text("31".tr,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                    ))),
            Center(
              child: Text("Created!",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.w900)),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              width: 300,
              child: Center(
                child: Text(
                  "32".tr,
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[400],
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 40),
                width: 300,
                height: 60,
                child: MaterialButton(
                    color: PublicColor,
                    onPressed: () 
                    {
                       Navigator.push(
                      context,
                      Sliding(Page: LoginPage()),
                    );
                    },
                    child: Text("33".tr,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15)),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                        ,)
                        ,)
                        ,)
          ],
        ),
      ),
    );
  }
}
