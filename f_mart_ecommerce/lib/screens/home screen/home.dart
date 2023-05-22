import 'package:f_mart_ecommerce/constants/consts.dart';
import 'package:f_mart_ecommerce/controller/homecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var controller = Get.put(HomeController());

    var navItem = [
      BottomNavigationBarItem(
          icon: Image.asset(
            icHome,
            width: 26,
          ),
          label: home),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCategories,
            width: 26,
          ),
          label: category),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCart,
            width: 26,
          ),
          label: cart),
      BottomNavigationBarItem(
          icon: Image.asset(
            icProfile,
            width: 26,
          ),
          label: account),
    ];

    var navBody = [
      Container(
        color: Colors.blue,
      ),
      Container(
        color: Colors.amber,
      ),
      Container(
        color: Colors.purple,
      ),
      Container(
        color: Colors.cyan,
      )
    ];

    return Scaffold(
      body: Column(
        children: [
          Obx(() => Expanded(child: navBody.elementAt(controller.curntnavIndex.value),)),
        ],
      ),
      bottomNavigationBar: Obx(() =>
         BottomNavigationBar(
          currentIndex: controller.curntnavIndex.value,
            selectedItemColor: Colors.red,
            selectedLabelStyle: TextStyle(fontFamily: semibold),
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            onTap: (value){
            controller.curntnavIndex.value = value;
            },
            items: navItem),
      ),
    );
  }
}
