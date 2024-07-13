import 'package:food_delivery/pages/food/popular_food_detail.dart';
import 'package:food_delivery/pages/home/main_food_page.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String initial = "/";
  static const String popularFood = "/popular-food";

  static String getPopularFood() => '$popularFood';

  static String getInitial() => '$initial';

  static List<GetPage> routes = [
    GetPage(
        name: initial,
        page: () {
          return MainFoodPage();
        },
        transition: Transition.fadeIn),
    GetPage(
        name: popularFood,
        page: () {
          return PopularFoodDetail();
        },
        transition: Transition.fadeIn),
  ];
}
