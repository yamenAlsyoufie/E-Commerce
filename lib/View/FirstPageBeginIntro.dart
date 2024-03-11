import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
//import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:marketstoreapp/View/SecondPageBegin.dart';
import 'package:marketstoreapp/ChooseLanguageWithIntrolocal.dart';
import 'package:marketstoreapp/Sliding.dart';
import 'package:marketstoreapp/convertcolor.dart';

class FirstPageBeginIntro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
      width: double.infinity,
      height: double.infinity,
      color:Colors.white,
      child:Column(
        children: [
          Lottie.asset("Animations/AnimationsBegin/FirsPageAnimation.json"),
          Center(
          child:Container(
            width:200,
            height: 200,
            child:Column(
              children:[
          Center(
          child:Text("FirstText".tr , style:TextStyle(color: Colors.black , fontSize: 30 , fontWeight:FontWeight.bold)
          ),
          ),
          Container(
            margin:EdgeInsets.only(top:20),
          child:Center(
         child:Text("secondText".tr, style:TextStyle(color: Colors.black , fontSize: 15 , fontWeight:FontWeight.bold)
         ),
          ),
          ),
          ]
          ),
          ),
          ),
           Container(
            // pointing to material button using to move to another page
            width: 300,
            height: 50,
            margin: EdgeInsets.only(top: 40),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  Sliding(Page: SecondPageBeginIntro()),
                );
              },
              child: Icon(Icons.arrow_forward),
              color: Colors.blue[500],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
        ],
      )
    )
    );
  }
}
