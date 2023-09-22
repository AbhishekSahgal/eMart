import 'package:emart_app/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'consts/consts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // we are using getx so we have to change this material aap into getmaterial app
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appname,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            color: darkFontGrey,
          ),
            // set elevation 0
          elevation: 0,
            backgroundColor: Colors.transparent
        ),
        fontFamily: regular,
      ),
      home: SplashScreen(),
    );
  }
}
