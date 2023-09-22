import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/strings.dart';
import 'package:emart_app/views/auth_screen/login_screen.dart';
import 'package:emart_app/widgets_common/applogo_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../widgets_common/bg_widget.dart';
import '../../widgets_common/custom_btn.dart';
import '../../widgets_common/custom_textfield.dart';
import '../../consts/lists.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool? isCheck = false;

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
                      customTextField(title: name, hint: nameHint),
                      customTextField(title: email, hint: emailHint),
                      customTextField(title: password, hint: passwordHint),
                      customTextField(title: reTpyePassword, hint: passwordHint),
                      Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(onPressed: (){}, child: forgetpass.text.make())),
                      5.heightBox,
                      // outBtn(title: 'SignUp', onPress: (){
                      // }, ).box.width(context.screenWidth - 50).make(),
                      Row(
                        children: [
                          Checkbox(
                            checkColor: Colors.white,
                              activeColor:Colors.red ,
                              value: isCheck, onChanged: (newValue){
                              setState(() {
                                isCheck = newValue;
                              });
                          }),
                          10.widthBox,
                           Expanded(
                             child: RichText(text: TextSpan(
                               children: [
                                 TextSpan(
                                   text: "I agree to the ", style: TextStyle(
                                   fontFamily: regular,
                                   color: fontGrey,
                                 ),
                                 ),
                                 TextSpan(
                                   text: ternAndCondition, style: TextStyle(
                                   fontFamily: regular,
                                   color: redColor,
                                 ),
                                 ),
                                 TextSpan(
                                   text: " & ", style: TextStyle(
                                   fontFamily: regular,
                                   color: fontGrey,
                                 ),
                                 ),
                                 TextSpan(
                                   text: privacyPolicy, style: TextStyle(
                                   fontFamily: regular,
                                   color: redColor ,
                                 ),
                                 ),
                               ]
                             )),
                           )
                        ],
                      ),
                      outBtn(title: 'SignUp',color: isCheck == true ? redColor : lightGrey, onPress: (){
                      }, ).box.width(context.screenWidth - 50).make(),
                      10.heightBox,
                      // Wrapping into geasture dectector of velocity X
                      RichText(text: TextSpan(
                        children: [
                          TextSpan(
                            text: alreadyAccount, style: TextStyle(
                            fontFamily: regular,
                            color: fontGrey,
                          )
                          ),
                          TextSpan(
                              text: login, style: TextStyle(
                            fontFamily: bold,
                            color: redColor,
                          )
                          ),
                        ]
                      )).onTap(() {
                        Get.back();
                      }),
                    ],
                  ).box.white.rounded.padding(EdgeInsets.all(16)).width(context.screenWidth - 70).shadowSm.make(),
                ],
              ),
            ),
          ),
        ));
  }
}
