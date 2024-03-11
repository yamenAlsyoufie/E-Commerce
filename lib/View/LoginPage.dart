import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
//import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:marketstoreapp/View/CreateAcount.dart';
//import 'package:marketstoreapp/ChooseLanguageWithBegin/Views/SecondPageBegin.dart';
import 'package:marketstoreapp/Controller/LoginPageController.dart';
//import 'package:marketstoreapp/ChooseLanguageWithBegin/model/bidingCreateAccount.dart';
// import 'package:marketstoreapp/ChooseLanguageWithBegin/model/bidingCreateAccount.dart';
// import 'package:marketstoreapp/ChooseLanguageWithIntrolocal.dart';
// import 'package:marketstoreapp/ChooseLanguageWithBegin/controllers/BeginingPagesController.dart';
import 'package:marketstoreapp/Sliding.dart';
import 'package:marketstoreapp/Sliding.dart';
import 'package:marketstoreapp/Sliding.dart';
import 'package:marketstoreapp/convertcolor.dart';

import '../Sliding.dart';
import 'ConfirmEmail.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    LoginPageConroller controller = Get.put(LoginPageConroller());
    Color borderFocusColor = HexColor("#109cfe");
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        //color:HexColor("#109cfe"),
        child: SingleChildScrollView(
          child: Column(
            //the main Column
            children: [
              Image.asset(
                "images/LoginImages/LoginImage.jpg",
                height: 300,
              ),
              Container(
                // contain User name and icon and the text feild
                child: Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                          child: Row(children: [
                            // contain the icon and the Text (User name)
                            Icon(
                              Icons.person,
                              color: HexColor("#109cfe"),
                            ),
                            Text("fiveText".tr,
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold))
                          ]),
                        ), //contain the text feild and the hint text feild and the the size and all things
                        Container(
                          width: 300,
                          height: 40,
                          margin: EdgeInsets.only(top: 10),
                          child: TextField(
                            controller: controller.TextUserNameLogin,
                            decoration: InputDecoration(
                              hintText: '********@gmail.com',
                              contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              hintStyle: TextStyle(
                                fontSize: 10,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  color: borderFocusColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              //------------------------------------------
              Container(
                // contain User name and icon and the text feild
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                          child: Row(children: [
                            // contain the icon and the Text (password)
                            Icon(
                              Icons.lock,
                              color: HexColor("#109cfe"),
                            ),
                            Text("sixText".tr,
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold))
                          ]),
                        ), //contain the text feild and the hint text feild and the the size and all things
                        GetX<LoginPageConroller>(
                          builder: (controller) => Container(
                            width: 300,
                            height: 40,
                            margin: EdgeInsets.only(top: 10),
                            child: TextField(
                              obscureText: controller.flag.value,
                              controller: controller.textPasswordLogin,
                              decoration: InputDecoration(
                                hintText: '********',
                                suffixIcon: controller.visibleOrUnvisble(),
                                contentPadding:
                                    EdgeInsets.fromLTRB(10, 0, 0, 10),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                hintStyle: TextStyle(
                                  fontSize: 10,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                    color: borderFocusColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                // forget password butoon
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      Sliding(Page: ConfirmEmail()),
                    );
                  },
                  child: Text("nineText".tr,//
                      style: TextStyle(color: HexColor("#109cfe"))),
                ),
              ),
              //-------------------------------------------------
              Container(
                //material button using to sign up with Google
                width: 250,
                margin: EdgeInsets.only(top: 60),
                child: MaterialButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Image.asset("images/LoginImages/GoogleIcon.png",
                          width: 30),
                      Container(
                        padding: EdgeInsets.only(left: 15),
                        child: Text("sevenText".tr,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w900)),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                //material button using to sign up with Facebook
                width: 250,
                margin: EdgeInsets.only(top: 40),
                child: MaterialButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Image.asset("images/LoginImages/FacebookIcon.png",
                          width: 30),
                      Container(
                        padding: EdgeInsets.only(left: 15),
                        child: Text("eightText".tr,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w900)),
                      )
                    ],
                  ),
                ),
              ),
              //-------------------------------------
              Container(
                // sign in to store
                width: 300,
                margin: EdgeInsets.only(top: 50),
                child: MaterialButton(
                    onPressed: () {
                      
                    },
                    color: HexColor("#109cfe"),
                    child: Icon(Icons.arrow_forward),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              Container(
                // crearte account button
                width: 300,
                margin: EdgeInsets.only(top: 25),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                    context,
                    Sliding(Page: CreateAccount()),
                    );
                  },
                  //color: HexColor("#109cfe"),
                  child: Text(
                    "nineText2".tr,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(20)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
