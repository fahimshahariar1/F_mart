import 'package:f_mart_ecommerce/constants/consts.dart';

Widget bgWidget(Widget? child) {
  return Container(
    decoration: BoxDecoration(
      image:
          DecorationImage(image: AssetImage(imgBackground), fit: BoxFit.fill),
    ),
    child: child,
  );
}
