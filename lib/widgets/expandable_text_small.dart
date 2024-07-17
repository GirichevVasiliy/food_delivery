import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/small_text.dart';
class ExpandableTextWidgetSmall extends StatelessWidget {
  final String text;

  const ExpandableTextWidgetSmall({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(

      child: OneLineText(
        text: text,
        size: Dimensions.font14,
        color: AppColors.paraColor,
      ),
    );
  }
}

class OneLineText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final double height;

  OneLineText({
    Key? key,
    required this.text,
    this.color = const Color(0xFF332d2d),
    this.size = 0,
    this.height = 1.2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color,
        fontSize: size == 0 ? Dimensions.font12 : size,
        height: height,
      ),
      maxLines: 1,
    );
  }
}