import 'package:flutter/cupertino.dart';
import 'package:food_delivery/utils/dimensions.dart';

class SmallText extends StatelessWidget {
  final Color color;
  final String text;
  final double size;
  final double height;
  SmallText({
    Key? key,
    this.color = const Color(0xFF332d2d),
    required this.text,
    this.size = 0,
    this.height = 1.2
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color,
        fontSize: size == 0 ? Dimensions.font12 : size,
        height: height
      ),
    );
  }
}