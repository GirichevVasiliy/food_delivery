import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/small_text.dart';

class ExpandableTextWidgetSmall extends StatefulWidget {
  final String text;

  const ExpandableTextWidgetSmall({super.key, required this.text});

  @override
  State<ExpandableTextWidgetSmall> createState() => _ExpandableTextWidgetStateSmall();
}

class _ExpandableTextWidgetStateSmall extends State<ExpandableTextWidgetSmall> {
  late String firstHalf;
  late String secondHalf;
  bool hiddenText = true; // скрытый текст
  double textHeight = 60; // размер текста.

  @override
  void initState() {
    super.initState();
    /* Есть описание блюда и если длинна текста больше чем textHeight,
 * к примеру 60 символов, то все что до 60 мы поместим в firstHalf,
 * а остаток теста в secondHalf. Если текст помещается в 200 символов, то
 * все запишем в firstHalf, а в secondHalf, так как переменные late мы должны что то
 * записать, запишем "".
 * */
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty ? SmallText(size: Dimensions.font12, text: firstHalf,
        color: AppColors.paraColor,) : Column(
              children: [
                SmallText(
                    text: hiddenText
                        ? (firstHalf + "...")
                        : (firstHalf + secondHalf),
                    size: Dimensions.font12,
                height: Dimensions.height1_5,
                  color: AppColors.paraColor,),
              ],
            ),
    );
  }
}
