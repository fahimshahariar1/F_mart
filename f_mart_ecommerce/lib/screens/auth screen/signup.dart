import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../constants/consts.dart';
import '../../constants/lists.dart';
import '../../widgets/appLogo.dart';
import '../../widgets/bg_widget.dart';
import '../../widgets/button.dart';
import '../../widgets/custom_textfield.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool? isCheck = false;

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
              "Join the $appname".text.fontFamily(bold).size(18).white.make(),
              10.heightBox,
              Column(
                children: [
                  customTextField(name, nameHint, context),
                  customTextField(email, emailHint, context),
                  customTextField(password, passHint, context),
                  customTextField(reTypePass, passHint, context),
                  10.heightBox,
                  Row(
                    children: [
                      Checkbox(
                          checkColor: Colors.red,
                          value: isCheck,
                          onChanged: (newValue) {
                            setState(() {
                              isCheck = newValue;
                            });
                          }),
                      10.widthBox,
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "I agree to the ",
                                style: TextStyle(
                                  fontFamily: bold,
                                  color: fontGrey,
                                ),
                              ),
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: terms,
                                    style: TextStyle(
                                      fontFamily: bold,
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: " & ",
                                    style: TextStyle(
                                      fontFamily: bold,
                                      color: fontGrey,
                                    ),
                                  ),
                                ],
                              ),
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: privacy,
                                    style: TextStyle(
                                      fontFamily: bold,
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  10.heightBox,
                  button(() {}, isCheck == true? Colors.red : lightGrey, whiteColor, signup)
                      .box
                      .width(context.screenWidth - 50)
                      .make(),
                  10.heightBox,
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: already,
                            style:
                                TextStyle(color: fontGrey, fontFamily: bold)),
                        TextSpan(
                            text: login,
                            style:
                                TextStyle(color: Colors.red, fontFamily: bold))
                      ],
                    ),
                  ).onTap(
                    () {
                      Get.back();
                    },
                  ),
                ],
              )
                  .box
                  .white
                  .rounded
                  .padding(EdgeInsets.all(16))
                  .width(context.screenWidth - 60)
                  .shadowSm
                  .make(),
            ],
          ),
        ),
      ),
    );
  }
}
