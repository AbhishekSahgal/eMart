import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/controller/home_screen_controller.dart';
import 'package:emart_app/views/cart/cart_screen.dart';
import 'package:emart_app/views/home_screen/home_screen.dart';
import 'package:emart_app/views/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../category_screen/category_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // init home controller from controller folder to home_screen_controller
    var controller = Get.put(HomeController());
    var navBarItem = [
      BottomNavigationBarItem(
          icon: Image.asset(
            icHome,
            width: 26,
          ),
          label: home),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCategories,
            width: 26,
          ),
          label: categories),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCart,
            width: 26,
          ),
          label: cart),
      BottomNavigationBarItem(
          icon: Image.asset(
            icProfile,
            width: 26,
          ),
          label: account),
    ];
    var navBody = [
      HomeScreen(),
      CategoryScreen(),
      CartScreen(),
      ProfileScreen(),
    ];

    return Scaffold(
      body: Column(
        children: [
          Obx(
            () => Expanded(
              child: navBody.elementAt(controller.currentNavIndex.value),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Obx(() =>
        BottomNavigationBar(
          currentIndex: controller.currentNavIndex.value  ,
        backgroundColor: whiteColor,
            selectedItemColor: redColor,
            selectedLabelStyle: TextStyle(fontFamily: semibold),
            type: BottomNavigationBarType.fixed,
            items: navBarItem,
            onTap: (value){
          controller.currentNavIndex.value = value;
      },
        ),
      ),
    );
  }
}
