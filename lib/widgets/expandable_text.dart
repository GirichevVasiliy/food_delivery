import 'package:flutter/cupertino.dart';
import 'package:food_delivery/utils/dimensions.dart';

class ExpandableText extends StatefulWidget {
  final String text;

  const ExpandableText({super.key, required this.text});

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  late String firstHalf;
  late String secondHalf;
  bool hiddenText = true; // скрытый текст
  double textHeight = Dimensions.screenHeight / 5.63; // размер текста.

  @override
  void initState(){
    super.initState();
 /* Есть описание блюда и если длинна текста больше чем textHeight,
 * к примеру 200 символов, то все что до 200 мы поместим в firstHalf,
 * а остаток теста в secondHalf. Если текст помещается в 200 символов, то
 * все запишем в firstHalf, а в secondHalf, так как переменные late мы должны что то
 * записать, запишем "".
 * */

    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf = widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}

