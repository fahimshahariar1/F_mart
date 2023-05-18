import 'package:f_mart_ecommerce/constants/consts.dart';
import 'package:f_mart_ecommerce/constants/lists.dart';
import 'package:f_mart_ecommerce/screens/auth%20screen/signup.dart';
import 'package:f_mart_ecommerce/widgets/appLogo.dart';
import 'package:f_mart_ecommerce/widgets/bg_widget.dart';
import 'package:f_mart_ecommerce/widgets/button.dart';
import 'package:f_mart_ecommerce/widgets/custom_textfield.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              (context.screenHeight * 0.1).heightBox,
              appLogoWidget(),
              15.heightBox,
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
                  button(() {}, Colors.red, whiteColor, login)
                      .box
                      .width(context.screenWidth - 50)
                      .make(),
                  5.heightBox,
                  createNewAccount.text.color(fontGrey).make(),
                  10.heightBox,
                  button(() {
                    Get.to(() => SignUp());

                  }, lightgolden, Colors.red, signup)

                      .box
                      .width(context.screenWidth - 50)
                      .make(),
                  10.heightBox,
                  loginWith.text.color(fontGrey).make(),
                  10.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: lightGrey,
                          child: Image.asset(
                              socialIconList[index],
                          width: 30,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
                  .box
                  .white
                  .rounded
                  .padding(EdgeInsets.all(16))
                  .width(context.screenWidth - 60).shadowSm
                  .make(),
            ],
          ),
        ),
      ),
    );
  }
}
