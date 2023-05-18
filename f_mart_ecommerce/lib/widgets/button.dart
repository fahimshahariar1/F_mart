import 'package:f_mart_ecommerce/constants/consts.dart';

Widget button(onPressed, color, textcolor, String? title) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: color,
        padding: EdgeInsets.all(12),
      ),
      onPressed: onPressed,
      child: title?.text.color(textcolor).fontFamily(bold).make());
}
