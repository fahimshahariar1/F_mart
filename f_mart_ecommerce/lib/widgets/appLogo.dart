import 'package:f_mart_ecommerce/constants/consts.dart';
import 'package:velocity_x/velocity_x.dart';

Widget appLogoWidget() {
  return Image.asset(icAppLogo)
      .box
      .white
      .size(77, 77)
      .padding(EdgeInsets.all(8))
      .rounded
      .make();
}
