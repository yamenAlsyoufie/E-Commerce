import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:marketstoreapp/View/LoginPage.dart';
import 'package:marketstoreapp/Sliding.dart';
import 'package:marketstoreapp/convertcolor.dart';

import 'ConfirmEmail.dart';

class ResetAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color PublicColor = HexColor("#109cfe");
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.push(
                          context,
                          Sliding(Page: ConfirmEmail()),
                        );
                      },
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        Navigator.push(
                          context,
                          Sliding(Page: LoginPage()),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
            Lottie.asset("Animations/ForgetPasswordAndResult/ResetEmail.json",
                width: double.infinity, height: 200),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text("thirteenText".tr,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 40, 10, 0),
              child: Text("yamenAlsyoufie@gmail.com",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 10, 0),
              child: Text("fourteenText".tr,
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 12,
                      fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 5, 10, 0),
              child: Text("fivteenText".tr,
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 12,
                      fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 5, 10, 0),
              child: Text("sixteenText".tr,
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 12,
                      fontWeight: FontWeight.bold)),
            ),
            Container(
              //material button
              margin: EdgeInsets.only(top: 40),
              width: 325,
              height: 50,
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    Sliding(Page: ResetAccount()),
                  );
                },
                color: PublicColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "Done",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: TextButton(
                  onPressed: () {},
                  child: Text("seventeenText".tr,
                      style: TextStyle(
                        color: Colors.grey[500],
                      ))),
            ),
          ],
        ),
      ),
    );
  }
}
