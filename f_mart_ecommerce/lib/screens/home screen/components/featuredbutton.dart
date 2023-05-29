import 'package:f_mart_ecommerce/constants/consts.dart';
import 'package:flutter/material.dart';

Widget featuredButton({
  String? title, icon
}) {
  return Row(
    children: [
      Image.asset(
        icon,
        width: 60,
        fit: BoxFit.fill,
      ),
      10.widthBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make()
    ],
  )
      .box
      .white
      .width(200)
      .margin(EdgeInsets.symmetric(
        horizontal: 4,
      ))
      .roundedSM
      .padding(EdgeInsets.all(4))
      .outerShadowSm
      .make();
}
