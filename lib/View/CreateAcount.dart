import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketstoreapp/View/LoginPage.dart';
import 'package:marketstoreapp/Controller/CreateAccountController.dart';
import 'package:marketstoreapp/Sliding.dart';
import 'package:marketstoreapp/convertcolor.dart';

import 'AccountCreatedSuccess.dart';

class CreateAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color PublicColor = HexColor("#109cfe");
    var controller =
        Get.put( CreateAccountController());
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 40, 300, 0),
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(
                  context,
                  Sliding(Page: LoginPage()),
                );
              },
            ),
          ),
          Column(
            children: [
              Container(
                // text (Let's create your account)
                margin: EdgeInsets.fromLTRB(0, 50, 125, 0),
                child: Text(
                  "18".tr,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Row(
                children: [
                  //  this widget contain first name and last name
                  Container(
                    // first Name Text feild
                    width: 175,
                    height: 40,
                    margin: EdgeInsets.fromLTRB(15, 30, 0, 0),
                    child: TextField(
                      controller: controller.FirstNameText,
                      decoration: InputDecoration(
                        prefixIcon:
                            Icon(Icons.person_outline, color: Colors.grey[400]),
                        hintText: '19'.tr,
                        contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        hintStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // last Name Text feild
                    width: 175,
                    height: 40,
                    margin: EdgeInsets.fromLTRB(15, 30, 0, 0),
                    child: TextField(
                      controller: controller.LastNameText,
                      decoration: InputDecoration(
                        prefixIcon:
                            Icon(Icons.person_outline, color: Colors.grey[400]),
                        hintText: '20'.tr,
                        contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        hintStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                // User Name Text Field
                width: 365,
                height: 40,
                margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                child: TextField(
                  controller: controller.UserNameText,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.edit, color: Colors.grey[400]),
                    hintText: '21'.tr,
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                // Email Text Field
                width: 365,
                height: 40,
                margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                child: TextField(
                  controller: controller.EmailText,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email, color: Colors.grey[400]),
                    hintText: '22'.tr,
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                // phone number Text field
                width: 365,
                height: 40,
                margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                child: TextField(
                  controller: controller.PhoneNumberText,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone, color: Colors.grey[400]),
                    hintText: '23'.tr,
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              GetX<CreateAccountController>(
                  builder: (controller) => Container(
                        // password Text Field
                        width: 365,
                        height: 40,
                        margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                        child: TextField(
                          controller: controller.PasswordText,
                          obscureText: controller.flag.value,
                          decoration: InputDecoration(
                            prefixIcon:
                                Icon(Icons.password, color: Colors.grey[400]),
                            suffixIcon: controller.VisibleOrUnvisible(),
                            hintText: '24'.tr,
                            contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5)),
                            hintStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      )),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Row(children: [
                  // contain checkbox and the Text near it
                  GetX<CreateAccountController>(
                    builder: (controller) => // check box to agree or non agree
                        Checkbox(
                      checkColor: Colors.white,
                      activeColor: PublicColor,
                      value: controller.agree.value,
                      onChanged: (val) {
                        controller.AgreeOrNonAgree();
                      },
                    ),
                  ),
                  Container(
                    child: Text("25".tr, style: TextStyle(color: Colors.black)),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "26".tr,
                        style: TextStyle(color: PublicColor),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Text(
                      "27".tr,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          Sliding(Page: AccountCreateSuccess()),
                        );
                      },
                      child: Text(
                        "28".tr,
                        style: TextStyle(color: PublicColor),
                      ),
                    ),
                  )
                ]),
              ),
              Container(
                // sign in of material button has (Create Account)
                width: 365,
                height: 50,
                margin: EdgeInsets.only(top: 10),
                child: MaterialButton(
                  onPressed: () {
                      Navigator.push(
                      context,
                      Sliding(Page: AccountCreateSuccess()),
                    );
                  },
                  color: HexColor("#109cfe"),
                  child: Text("29".tr,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              Container(
                // Text("or sign up with")
                margin: EdgeInsets.only(top: 30),
                child: Text(
                  "30".tr,
                  style: TextStyle(color: Colors.grey[400]),
                ),
              ),
              Container(
                // this conatiner contain google and facebook login button
                margin: EdgeInsets.only(top: 30),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                    // google button login
                    margin: EdgeInsets.only(right: 20),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black),
                        ),
                        child: Center(
                          child: Image.asset(
                              "images/LoginImages/GoogleIcon.png",
                              width: 25,
                              height: 25),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // Facebook login button
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black),
                        ),
                        child: Center(
                          child: Image.asset(
                              "images/LoginImages/FacebookIcon.png",
                              width: 25,
                              height: 25),
                        ),
                      ),
                    ),
                  )
                ]),
              )
            ],
          )
        ],
      ),
    );
  }
}
