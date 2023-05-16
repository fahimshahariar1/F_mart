import 'package:f_mart_ecommerce/constants/consts.dart';
import 'package:f_mart_ecommerce/widgets/appLogo.dart';
import 'package:f_mart_ecommerce/widgets/bg_widget.dart';
import 'package:f_mart_ecommerce/widgets/button.dart';
import 'package:f_mart_ecommerce/widgets/custom_textfield.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      Scaffold(
        body: Center(
          child: Column(
            children: [
              (context.screenHeight * 0.1).heightBox,
              appLogoWidget(),
              10.heightBox,
              "Log into $appname".text.fontFamily(bold).size(18).white.make(),
              10.heightBox,
              Column(
                children: [
                  customTextField(email, emailHint, context),
                  customTextField(password, passHint, context),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: forgotpass.text.make(),
                    ),
                  ),
                  10.heightBox,
                  button((){}, Colors.red, whiteColor, login),
                ],
              )
                  .box
                  .white
                  .rounded
                  .padding(EdgeInsets.all(16))
                  .width(context.screenWidth - 60)
                  .make(),
            ],
          ),
        ),
      ),
    );
  }
}
