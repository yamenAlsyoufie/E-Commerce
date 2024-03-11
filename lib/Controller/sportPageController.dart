import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SportPageController extends GetxController {
  final ScrollController scrollController = ScrollController();
  List<String> SportPagePhotos = [
    "addidasFootball1.jpg",
    "addidasFootball2.jpg",
    "nikeFootball3.jpg",
    "nikeFootball4.jpg",
    "spaldingBasketball1.jpg",
    "spaldingBasketball2.jpg",
    "tennisRacket1.jpg"
        "tennisRacket2.jpg"
        "wilsonBasketball1.jpg"
        "wilsonBasketball2.jpg"
  ];
  List<String> SportPageBrands = [
    "Addidas",
    "Addidas",
    "Nike",
    "Nike",
    "Spalding",
    "Spalding",
    "Nike",
    "Addidas",
    "Wilson",
    "Wilson"
  ];
  List<String> SportPagePrices = [
    "300\$",
    "400\$",
    "500\$",
    "200\$",
    "100\$",
    "200\$",
    "500\$",
    "700\$",
    "1000\$",
    "400\$",
  ];
  List<String> SportPageNameItems = [
    "Football",
    "Football",
    "Football",
    "Football",
    "BasketBall",
    "BasketBall",
    "Tennis",
    "Tennis",
    "BasketBall",
    "BasketBall",
  ];
  RxList<bool> itemFlags = RxList.generate(100, (_) => false);
  void LikeProductSportPage(int i) {
    itemFlags[i] = !itemFlags[i];
  }
}
