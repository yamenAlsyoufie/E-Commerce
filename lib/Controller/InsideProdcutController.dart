import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:marketstoreapp/View/Home.dart';
import 'package:marketstoreapp/Widgets/DisplayElementInGridView.dart';

class InsideProductController extends GetxController {
  var currentPageIndex = 0.obs;
  var ProductIndex = 0;
  //DisplayElementInGridView displayElementInGridView = new  DisplayElementInGridView();
  int getListSize(int pageIndex) {
    List<String>? images = PageViewPhoto[pageIndex];
    return images?.length ?? 0;
  }

  Map<int, List<String>> PageViewPhoto = {
    1: [
      "images/InsideStore/InsideProducts/1/phone1In.jpg",
      "images/InsideStore/InsideProducts/1/phone2In.jpg",
      "images/InsideStore/InsideProducts/1/phone3In.jpg",
      "images/InsideStore/InsideProducts/1/phone4In.jpg",
    ],
    2: [],
    3: [],
    4: [],
    5: []
  };
  Map<int, List<Map<String, String>>> Details = {
    1: [
      {"Rate": "5.0(199)"},
      {"offer": "33%"},
      {"oldPrice": "1244\$"},
      {"NewPrice": "800\$"},
      {"type": "Iphone 15 pro max"},
      {"Stock": "In Stock"},
      {"Brand": "Iphone"},
      {"Icon": "images/InsideStore/InsideProducts/1/appleIcon.png"},
      {"47".tr: "48".tr},
    ],
    2: [],
    3: [],
    4: [],
    5: [],
  };
}
