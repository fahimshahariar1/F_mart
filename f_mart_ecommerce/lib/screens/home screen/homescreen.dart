import 'package:f_mart_ecommerce/constants/colors.dart';
import 'package:f_mart_ecommerce/constants/consts.dart';
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
                    filled: true,
                    fillColor: Colors.white,
                    hintText: search,
                    suffixIcon: Icon(Icons.search),
                    hintStyle: TextStyle(
                      color: textfieldGrey,
                    )),
              ),
            ),
            VxSwiper.builder(
                itemCount: sliderList.length, itemBuilder: (context, index) {

            }
            )
          ],
        ),
      ),
    );
  }
}
