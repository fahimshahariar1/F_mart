import 'package:f_mart_ecommerce/constants/colors.dart';
import 'package:f_mart_ecommerce/constants/consts.dart';
import 'package:f_mart_ecommerce/widgets/homeButtons.dart';
import 'package:flutter/material.dart';

import '../../constants/lists.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      padding: EdgeInsets.all(12),
      child: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 60,
              color: lightGrey,
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.white,
                    hintText: search,
                    suffixIcon: Icon(Icons.search),
                    hintStyle: TextStyle(
                      color: textfieldGrey,
                    )),
              ),
            ),
            10.heightBox,
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      height: 150,
                      enlargeCenterPage: true,
                      itemCount: sliderList.length,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          sliderList[index],
                          fit: BoxFit.fitWidth,
                        )
                            .box
                            .rounded
                            .clip(Clip.antiAlias)
                            .margin(
                          EdgeInsets.symmetric(horizontal: 8),
                        )
                            .make();
                      },
                    ),
                    10.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:
                      //error can be solved regarding list.generate by just removing the brackets of the children
                      List.generate(
                          2,
                              (int index) => homebuttons(
                            height: context.screenHeight * 0.15,
                            width: context.screenWidth / 2.5,
                            icon: index == 0 ? icTodaysDeal : icFlashDeal,
                            title: index == 0 ? today : flash,
                          )),
                    ),
                    10.heightBox,
                    VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      height: 150,
                      enlargeCenterPage: true,
                      itemCount: scndsliderList.length,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          scndsliderList[index],
                          fit: BoxFit.fitWidth,
                        )
                            .box
                            .rounded
                            .clip(Clip.antiAlias)
                            .margin(
                          EdgeInsets.symmetric(horizontal: 8),
                        )
                            .make();
                      },
                    ),
                    10.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        3,
                            (index) => homebuttons(
                            height: context.screenHeight * 0.15,
                            width: context.screenWidth / 3.5,
                            icon: index == 0
                                ? icTopCategories
                                : index == 1
                                ? icBrands
                                : icTopSeller,
                            title: index == 0
                                ? topC
                                : index == 1
                                ? brand
                                : top),
                      ),
                    ),
                    10.heightBox,
                    Align(
                      alignment: Alignment.centerLeft,
                      child: feature.text
                          .color(darkFontGrey)
                          .size(18)
                          .fontFamily(semibold)
                          .make(),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
