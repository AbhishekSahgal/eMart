import 'package:emart_app/views/auth_screen/signup_screen.dart';
import 'package:emart_app/views/home_screen/home.dart';
import 'package:emart_app/widgets_common/applogo_widget.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';
import 'package:emart_app/widgets_common/custom_btn.dart';
import 'package:emart_app/widgets_common/custom_textfield.dart';
import 'package:emart_app/widgets_common/custom_textfield.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:flutter/material.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        Scaffold(
          resizeToAvoidBottomInset: false,
          body: Center(
            child: Container(
              child: Column(
                children: [
                  (context.screenHeight * 0.1).heightBox,
                  applogoWidget(),
                  10.heightBox,
                  "Log into $appname".text.fontFamily(bold).white.size(18).make(),
                  15.heightBox,
                  Column(
                    children: [
                      customTextField(title: email, hint: emailHint),
                      customTextField(title: password, hint: passwordHint),
                      Align(
                        alignment: Alignment.centerRight,
                          child: TextButton(onPressed: (){}, child: forgetpass.text.make())),
                      5.heightBox,
                      outBtn(title: 'Login', onPress: (){
                        Get.to(()=> Home());
                      }, ).box.width(context.screenWidth - 50).make(),
                      5.heightBox,
                      createNewAccount.text.make(),
                      5.heightBox,
                      outBtn(title: 'SignUp', onPress: (){
                        Get.to(()=> SignUpScreen());
                      } ,color: lightGolden, txtColor: redColor,).box.width(context.screenWidth - 50).make(),
                      10.heightBox,
                      loginWidth.text.color(fontGrey).make(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                          List.generate(3, (index) => Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: lightGrey,
                              child: Image.asset(socialIconList[index], width: 30,),
                            ),
                          )),
                      )
                    ],
                  ).box.white.rounded.padding(EdgeInsets.all(16)).width(context.screenWidth - 70).shadowSm.make(),
                ],
              ),
            ),
          ),
    ));
  }
}
