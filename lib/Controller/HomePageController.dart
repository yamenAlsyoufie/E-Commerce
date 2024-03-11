import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketstoreapp/Widgets/PopularCategoriesButton.dart';

class HomeController extends GetxController {
  TextEditingController SearchBarTextField = TextEditingController();
  PopularCategoriesButton buttons = new PopularCategoriesButton();
  final ScrollController scrollController = ScrollController();
  List<String> listPhotos = [
    "images/InsideStore/pageViewphotos/shoe1.jpg",
    "images/InsideStore/pageViewphotos/shoe2.webp",
    "images/InsideStore/pageViewphotos/shoe3.webp"
  ];
  List<String> firstListPopularCat = [
    "37".tr,
    "38".tr,
    "39".tr,
    "40".tr,
    "41".tr,
    "42".tr,
  ];
  List<String> SecondListPopularCat = [
    "images/InsideStore/Icons/sport.png",
    "images/InsideStore/Icons/chair.png",
    "images/InsideStore/Icons/phone.png",
    "images/InsideStore/Icons/dress.png",
    "images/InsideStore/Icons/monkey.png",
    "images/InsideStore/Icons/slippers.png",
  ];
  var Photos = [
    "images/InsideStore/GridViewPhotos/smartphone1.jpg",
    "images/InsideStore/GridViewPhotos/smartphone2.jpg",
    "images/InsideStore/GridViewPhotos/smartphone2.jpg",
    "images/InsideStore/GridViewPhotos/smartphone2.jpg",
    "images/InsideStore/GridViewPhotos/smartphone2.jpg",
    "images/InsideStore/GridViewPhotos/smartphone2.jpg",
  ];
  List<String> NameItems = [
    'Iphone',
    'Iphone',
    'Iphone',
    'Samsung',
    'Iphone',
    'Samsung',
  ];
  List<String> prices = [
    "1244\$",
    "1200\$",
    "1000\$",
    "999\$",
    "1300\$",
    "224\$",
  ];
  List<String> brand = [
    "Apple",
    "Xaiomi",
    "Vivo",
    "Infinix",
    "Vivo",
    "Cupot",
  ];
  RxList<bool> itemFlags = RxList.generate(100, (_) => false);
  void LikeProduct(int i) {
    itemFlags[i] = !itemFlags[i];
  }
}
