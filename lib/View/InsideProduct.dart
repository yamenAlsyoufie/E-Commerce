import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketstoreapp/View/ResetEmail.dart';
import 'package:marketstoreapp/Widgets/DisplayElementInGridView.dart';
import 'package:marketstoreapp/convertcolor.dart';

import '../../Controller/InsideProdcutController.dart';

class InsideProducts extends StatelessWidget {
  InsideProductController insideProductImp = Get.put(InsideProductController());
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    Color PublicColor = HexColor("#109cfe");
    var sizePageView = insideProductImp
        .PageViewPhoto[insideProductImp.ProductIndex + 1]?.length;
    print(sizePageView);
    print(insideProductImp.ProductIndex);
    var indexs = insideProductImp.ProductIndex;
    // print(indexs);
    return Scaffold(
      body: SafeArea(
        child: Container(
          //margin: EdgeInsets.only(top: 20),
          width: double.infinity,
          height: double.infinity,
          child:
              // ignore: prefer_const_constructors
              ListView(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: width - (width / 3.2)),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite_border_outlined)),
                    )
                  ],
                ), // this container contain the icon buttons in the top
              ),
              ClipRect(
                child: Container(
                  margin: EdgeInsets.only(top: 30),
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 200,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  //margin: EdgeInsets.only(top: 50),
                  child: PageView.builder(
                    itemCount: sizePageView,
                    onPageChanged: (index) {
                      insideProductImp.currentPageIndex.value = index;
                    },
                    itemBuilder: (context, i) {
                      int size = insideProductImp.getListSize(indexs);
                      //int key = insideProductImp.PageViewPhoto.keys.elementAt(i);
                      List<String>? images =
                          insideProductImp.PageViewPhoto[indexs + 1];
                      return Image.asset(
                        images![i],
                        width: double.infinity,
                      );
                    },
                  ),
                ),
              ), // page view contain
              Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow[400]),
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    child: Text(
                      insideProductImp.Details[indexs + 1]![0]['Rate']!,
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    // contain star and rate and share icon
                    margin: EdgeInsets.only(left: 200),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.share, color: Colors.grey[700]),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      width: 50,
                      height: 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.yellow[500],
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        insideProductImp.Details[indexs + 1]![1]['offer']!,
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Text(
                        insideProductImp.Details[indexs + 1]![2]['oldPrice']!,
                        style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Text(
                        insideProductImp.Details[indexs + 1]![3]['NewPrice']!,
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 25),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(30, 15, 0, 0),
                child: Text(
                  insideProductImp.Details[indexs + 1]![4]['type']!,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Text("Stock:",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            //fontSize: 12.5,
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        insideProductImp.Details[indexs + 1]![5]['Stock']!,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Container(
                        padding: EdgeInsets.only(left: 30),
                        child: Image.asset(
                          insideProductImp.Details[indexs + 1]![7]['Icon']!,
                          width: 25,
                          height: 25,
                        )),
                    Container(
                      padding: EdgeInsets.only(left: 30),
                      child: Text(
                        insideProductImp.Details[indexs + 1]![6]['Brand']!,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                //material button
                margin: EdgeInsets.only(top: 40),
                // height: 80,
                // width: 200,
                child: MaterialButton(
                  height: 60,
                  minWidth: 350,
                  onPressed: () {},
                  color: PublicColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "CheckOut",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
