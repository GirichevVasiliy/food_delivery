import 'package:flutter/material.dart';
import 'package:food_delivery/pages/home/food_page_body.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  _MainFoodPageState createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        // Заголовок
        Container(
          child: Container(
            margin: EdgeInsets.only(top: Dimensions.height45, bottom: Dimensions.height15),
           padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
           child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    BigText(text: "Russia", color: AppColors.mainColor),
                   Row(
                     children: [
                       SmallText(text: "Tymen", color: Colors.black54),
                       Icon(Icons.arrow_drop_down_rounded) // Стрелка рядом с текстом Тюмень
                     ],
                   )
                  ],
                ),
                Center( /* element FIND*/
                  child: Container(
                    width: Dimensions.width45,
                    height: Dimensions.height45,
                    child: Icon(Icons.search, color: Colors.white, size: Dimensions.iconSize30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius15),
                      color: AppColors.mainColor,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        // Тело страницы
        Expanded(child: SingleChildScrollView(
          child: FoodPageBody(),
        ))
      ],
    ));
  }
}
