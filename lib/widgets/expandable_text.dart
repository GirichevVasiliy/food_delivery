import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/small_text.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;

  const ExpandableTextWidget({super.key, required this.text});

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String secondHalf;
  bool hiddenText = true; // скрытый текст
  double textHeight = Dimensions.screenHeight / 5.63; // размер текста.

  @override
  void initState() {
    super.initState();
    /* Есть описание блюда и если длинна текста больше чем textHeight,
 * к примеру 200 символов, то все что до 200 мы поместим в firstHalf,
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
      child: secondHalf.isEmpty ? SmallText(size: Dimensions.font16, text: firstHalf,
        color: AppColors.paraColor,) : Column(
              children: [
                SmallText(
                    text: hiddenText
                        ? (firstHalf + "...")
                        : (firstHalf + secondHalf),
                    size: Dimensions.font16,
                height: Dimensions.height1_5,
                  color: AppColors.paraColor,),
                InkWell(
                  onTap: () {
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                  child: Row(
                    children: [
                      SmallText(text: "Show more", color: AppColors.mainColor),
                      Icon(hiddenText ? Icons.arrow_drop_down : Icons.arrow_drop_up, color: AppColors.mainColor)
                    ],
                  ),
                )
              ],
            ),
    );
  }
}
