import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:marketstoreapp/Controller/HomePageController.dart';
import 'package:marketstoreapp/Widgets/DisplayElementInGridView.dart';
import '../Controller/InsideProdcutController.dart';

HomeController homecontrollerImp = Get.put(HomeController());
InsideProductController insideProducts = Get.put(InsideProductController());

class Home extends StatelessWidget {
  @override // from 34
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Image.asset(
              "images/InsideStore/backgroundPrductStore.jpg",
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ), // background of the page
            Column(
              children: [
                Container(
                  // display excpretion is (Good Day for Shopping)
                  width: double.infinity,
                  //margin: EdgeInsets.fromLTRB(0, 30, 170, 0),
                  child: Column(
                    children: [
                      Container(
                          margin: EdgeInsets.fromLTRB(0, 50, 180, 0),
                          child: Text("34".tr,
                              style: TextStyle(color: Colors.white))),
                      Container(
                        //display icon and name of the account
                        width: double.infinity,
                        child: Row(children: [
                          Container(
                            margin: EdgeInsets.only(left: 30),
                            child: const Text(
                              "Yamen Alsyoufie",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                          Container(
                              //display the icon in the top right
                              margin: const EdgeInsets.fromLTRB(150, 0, 0, 0),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.shopping_basket,
                                      color: Colors.white)))
                        ]),
                      ),
                      //--------------------------------------------------------------------------------
                      Container(
                        //display searchbar text
                        margin: const EdgeInsets.only(top: 20),
                        width: 350,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: TextField(
                          controller: homecontrollerImp.SearchBarTextField,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            prefixIcon:
                                Icon(Icons.search, color: Colors.grey[500]),
                            hintText: "35".tr,
                            hintStyle: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[500],
                            ),
                          ),
                        ),
                      ),
                      //------------------
                      Container(
                        //display exprition (Popular Categories)
                        margin: const EdgeInsets.fromLTRB(0, 15, 210, 0),
                        child: Text(
                          "36".tr,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Container(
                        //display popular categories
                        margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                        child: Row(
                          children: [
                            Expanded(
                              child: homecontrollerImp.buttons
                                  .DisplayPopularCategories(
                                      homecontrollerImp.firstListPopularCat[0],
                                      homecontrollerImp.SecondListPopularCat[0],
                                      "SportPage"),
                            ),
                            Expanded(
                              child: homecontrollerImp.buttons
                                  .DisplayPopularCategories(
                                      homecontrollerImp.firstListPopularCat[1],
                                      homecontrollerImp.SecondListPopularCat[1],
                                      ""),
                            ),
                            Expanded(
                              child: homecontrollerImp.buttons
                                  .DisplayPopularCategories(
                                      homecontrollerImp.firstListPopularCat[2],
                                      homecontrollerImp.SecondListPopularCat[2],
                                      ""),
                            ),
                            Expanded(
                              child: homecontrollerImp.buttons
                                  .DisplayPopularCategories(
                                      homecontrollerImp.firstListPopularCat[3],
                                      homecontrollerImp.SecondListPopularCat[3],
                                      ""),
                            ),
                            Expanded(
                              child: homecontrollerImp.buttons
                                  .DisplayPopularCategories(
                                      homecontrollerImp.firstListPopularCat[4],
                                      homecontrollerImp.SecondListPopularCat[4],
                                      ""),
                            ),
                            Expanded(
                              child: homecontrollerImp.buttons
                                  .DisplayPopularCategories(
                                      homecontrollerImp.firstListPopularCat[5],
                                      homecontrollerImp.SecondListPopularCat[5],
                                      ""),
                            )
                          ],
                        ),
                        //______________________________________________________________________________________
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 350, 0, 0),
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: Colors.white,
              ),
              child: ListView(
                shrinkWrap: true,
                controller: homecontrollerImp.scrollController,
                children: [
                  ClipRect(
                    child: Container(
                      alignment: Alignment.center,
                      width: 250,
                      height: 125,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: PageView.builder(
                        itemCount: homecontrollerImp.listPhotos.length,
                        itemBuilder: (context, i) {
                          insideProducts.ProductIndex = i;
                          print(i);
                          print(insideProducts.ProductIndex);
                          return (Image.asset(homecontrollerImp.listPhotos[i]));
                        },
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: DisplayElementInGridView(
                      controller: homecontrollerImp,
                      NameItems: homecontrollerImp.NameItems,
                      brand: homecontrollerImp.brand,
                      photos: homecontrollerImp.Photos,
                      prices: homecontrollerImp.prices,
                    ),
                  ),
                ],
              ),
              //   )
            ),
          ],
        ),
      ),
    );
  }
}
