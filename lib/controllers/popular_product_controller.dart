import 'package:flutter/material.dart';
import 'package:food_delivery/data/repository/popular_product_repo.dart';
import 'package:food_delivery/models/products_model.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;

  PopularProductController({required this.popularProductRepo});

  List<dynamic> _popularProductList = [];

  List<dynamic> get popularProductList => _popularProductList;
  bool _isLoad = false;

  bool get isLoad => _isLoad;

  int _quantity = 0;

  int get quantity => _quantity;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
      print("Connect API!!!");
      _popularProductList = [];
      _popularProductList.addAll(Product.fromJson(response.body).products);
      _isLoad = true;
      update();
    } else {
      print("NO!!! Connect API");
    }
  }

  void setQuantity(bool isIncrement) {
    if (isIncrement) {
      //тут мы будем увеличивать количество блюда
      _quantity = checkQuantity(_quantity + 1);
    } else {
      print("-DELETE PRODUCT");
      _quantity = checkQuantity(_quantity - 1); //тут мы будем уменьшать количество блюда
    }
    update();
  }

  int checkQuantity(int quantity) {
    if (quantity < 0) {
      Get.snackbar("Сообщение", "Не выбраны блюда",
          backgroundColor: AppColors.mainColor, colorText: Colors.white);
      return 0;
    } else if (quantity > 5) {
      Get.snackbar("Сообщение", "Вы добавили максимальное колличество блюд.",
          backgroundColor: AppColors.mainColor, colorText: Colors.white);
      return 5;
    }
    return quantity;
  }
}
