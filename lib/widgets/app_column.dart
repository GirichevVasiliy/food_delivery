import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/small_text.dart';

import '../utils/colors.dart';
import '../utils/dimensions.dart';
import 'big_text.dart';
import 'icon_and_text_widget.dart';

class AppColumn extends StatelessWidget {
  final String text;
  final double fontSize;
  const AppColumn({super.key, required this.text, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text, size: fontSize,),
        SizedBox(
          height: Dimensions.height10,
        ),
        Row(
          //Ряд со звездами
          children: [
            Wrap(
              children: List.generate(5, (index) {
                // количество звезд
                return Icon(
                  Icons.star,
                  color: AppColors.mainColor,
                  size: Dimensions.height15,
                );
              }),
            ),
            SizedBox(
              width: Dimensions.width7,
            ),
            SmallText(text: "4.5"),
            SizedBox(
              width: Dimensions.width20,
            ),
            SmallText(text: "1234"),
            SizedBox(
              width: Dimensions.width7,
            ),
            SmallText(text: "comments")
          ],
        ), //Ряд со звездами
        SizedBox(
          height: Dimensions.height20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // одинаковое расстояние
          children: [
            IconAndTextWidget(
                icon: Icons.circle_sharp,
                text: "Normal",
                iconColor: AppColors.iconColor1),
            IconAndTextWidget(
                icon: Icons.location_on,
                text: "1,7 km",
                iconColor: AppColors.mainColor),
            IconAndTextWidget(
                icon: Icons.access_time_rounded,
                text: "Normal",
                iconColor: AppColors.iconColor2),
          ],
        )
      ],
    );
  }
}
