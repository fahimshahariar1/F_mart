import 'package:f_mart_ecommerce/constants/consts.dart';

Widget button(onPress, color, textColor, title) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: color,
        padding: EdgeInsets.all(12),
      ),
      onPressed: () {
        onPress;
      },
      child: title.text.color(textColor).fontFamily(bold).make());
}
