import 'package:f_mart_ecommerce/constants/consts.dart';
import 'package:flutter/material.dart';

Widget homebuttons() {
  return Column(
    children: [
      Image.asset(
        icTodaysDeal,
        width: 26,
      ),
      5.heightBox,
      today.text.fontFamily(semibold).color(darkFontGrey).make()
    ],
  ).box.rounded.white.make();
}
