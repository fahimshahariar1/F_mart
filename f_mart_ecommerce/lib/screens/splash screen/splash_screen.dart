
import 'package:f_mart_ecommerce/constants/consts.dart';
import 'package:f_mart_ecommerce/screens/auth%20screen/login.dart';
import 'package:f_mart_ecommerce/widgets/appLogo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);



  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

changeScreen() {
  Future.delayed(
    Duration(seconds: 3),
        () {
          Get.to(()=> Login());
    },
  );
}


class _SplashScreenState extends State<SplashScreen> {




  @override
  void initState() {

    changeScreen();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF967bb6),
      body: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                icSplashBg,
                width: 300,
              ),
            ),

            20.heightBox,
            appLogoWidget(),
            10.heightBox,
            appname.text.fontFamily(bold).size(22).white.make(),
            appversion.text.white.make(),
            Spacer(),
            credits.text.white.fontFamily(semibold).make(),
            30.heightBox
          ],
        ),
      ),
    );
  }
}
