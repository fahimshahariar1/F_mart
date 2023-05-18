import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../constants/consts.dart';
import '../../constants/lists.dart';
import '../../widgets/appLogo.dart';
import '../../widgets/bg_widget.dart';
import '../../widgets/button.dart';
import '../../widgets/custom_textfield.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

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
                  // Align(
                  //   alignment: Alignment.centerRight,
                  //   child: TextButton(
                  //     onPressed: () {},
                  //     child: forgotpass.text.make(),
                  //   ),
                  // ),

                  // 5.heightBox,
                  // createNewAccount.text.color(fontGrey).make(),
                  // 10.heightBox,
                  // button(() {}, lightgolden, Colors.red, signup)
                  //     .box
                  //     .width(context.screenWidth - 50)
                  //     .make(),
                  10.heightBox,
                  Row(
                    children: [
                      Checkbox(
                          checkColor: Colors.red,
                          value: false,
                          onChanged: (newValue) {}),
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
                  button(() {}, Colors.red, whiteColor, signup)
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
                  // loginWith.text.color(fontGrey).make(),
                  // 10.heightBox,
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: List.generate(
                  //     3,
                  //         (index) => Padding(
                  //       padding: const EdgeInsets.all(8.0),
                  //       child: CircleAvatar(
                  //         radius: 25,
                  //         backgroundColor: lightGrey,
                  //         child: Image.asset(
                  //           socialIconList[index],
                  //           width: 30,
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // )
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
