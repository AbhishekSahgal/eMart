import 'package:emart_app/consts/colors.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/views/home_screen/components/featured_button.dart';
import 'package:emart_app/widgets_common/home_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
          child: Column(
        children: [
          Container(
            height: 60,
            alignment: Alignment.center,
            color: lightGrey,
            child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: whiteColor,
                  hintText: searchanything,
                  hintStyle: TextStyle(
                    color: textfieldGrey,
                  )),
            ),
          ),
          10.heightBox,
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  VxSwiper.builder(
                    aspectRatio: 16 / 9,
                    autoPlay: true,
                    height: 175,
                    enlargeCenterPage: true,
                    itemCount: slidersList.length,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        slidersList[index],
                        fit: BoxFit.fill,
                      )
                          .box
                          .rounded
                          .clip(Clip.antiAlias)
                          .margin(EdgeInsets.symmetric(horizontal: 6))
                          .make();
                    },
                  ),

                  // deals buttons
                  10.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                        2,
                        (index) => HomeButton(
                              width: context.screenWidth / 2.5,
                              height: context.screenHeight * 0.13,
                              icon: index == 0 ? icTodaysDeal : icFlashDeal,
                              title: index == 0 ? todaydeal : flashSale,
                            )),
                  ),

                  //   2nd Swiper
                  10.heightBox,
                  VxSwiper.builder(
                    aspectRatio: 16 / 9,
                    autoPlay: true,
                    height: 175,
                    // enlargeCenterPage: true,
                    itemCount: secondSlidersList.length,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        secondSlidersList[index],
                        fit: BoxFit.fill,
                      )
                          .box
                          .rounded
                          .clip(Clip.antiAlias)
                          .margin(EdgeInsets.symmetric(horizontal: 6))
                          .make();
                    },
                  ),

                  //   category button
                  10.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                        3,
                        (index) => HomeButton(
                              width: context.screenWidth / 3.5,
                              height: context.screenHeight * 0.13,
                              icon: index == 0
                                  ? icTopCategories
                                  : index == 1
                                      ? icBrands
                                      : icTopSeller,
                              title: index == 0
                                  ? topcategories
                                  : index == 1
                                      ? brand
                                      : topSellers,
                            )),
                  ),

                  //   featured categories
                  20.heightBox,
                  Align(
                      alignment: Alignment.centerLeft,
                      child: featuredCategories.text
                          .color(darkFontGrey)
                          .size(18)
                          .fontFamily(semibold)
                          .make()),
                  15.heightBox,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          3,
                          (index) => Column(
                                children: [
                                  FeaturedButtton(
                                    title: featuredTitle1[index],
                                    icon: featuredImages1[index],
                                  ),
                                  10.heightBox,
                                  FeaturedButtton(
                                    title: featuredTitle2[index],
                                    icon: featuredImages2[index],
                                  ),
                                ],
                              )).toList(),
                    ),
                  ),

                  //   featured product

                  20.heightBox,
                  Container(
                    padding: EdgeInsets.all(12),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: redColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        featuredProduts.text.white
                            .fontFamily(bold)
                            .size(18)
                            .make(),
                        10.heightBox,
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(
                              6,
                              (index) => Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    imgP1,
                                    width: 150,
                                    fit: BoxFit.cover,
                                  ),
                                  10.heightBox,
                                  "Laptop 4GB/64GB"
                                      .text
                                      .fontFamily(semibold)
                                      .color(darkFontGrey)
                                      .make(),
                                  10.heightBox,
                                  "\$600"
                                      .text
                                      .fontFamily(bold)
                                      .size(16)
                                      .color(redColor)
                                      .make(),
                                ],
                              )
                                  .box
                                  .white
                                  .margin(EdgeInsets.symmetric(horizontal: 4))
                                  .roundedSM
                                  .padding(EdgeInsets.all(8))
                                  .make(),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  //   3rd Swiper
                  20.heightBox,
                  VxSwiper.builder(
                    aspectRatio: 16 / 9,
                    autoPlay: true,
                    height: 175,
                    // enlargeCenterPage: true,
                    itemCount: secondSlidersList.length,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        secondSlidersList[index],
                        fit: BoxFit.fill,
                      )
                          .box
                          .rounded
                          .clip(Clip.antiAlias)
                          .margin(EdgeInsets.symmetric(horizontal: 6))
                          .make();
                    },
                  ),

                  //   all produts Section
                  20.heightBox,
                  GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 6,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                        mainAxisExtent: 300),
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            imgP5,
                            width: 200,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                          Spacer(),
                          "Laptop 4GB/64GB"
                              .text
                              .fontFamily(semibold)
                              .color(darkFontGrey)
                              .make(),
                          10.heightBox,
                          "\$600"
                              .text
                              .fontFamily(bold)
                              .size(16)
                              .color(redColor)
                              .make(),
                        ],
                      )
                          .box
                          .white
                          .margin(EdgeInsets.symmetric(horizontal: 4))
                          .roundedSM
                          .padding(EdgeInsets.all(12))
                          .make();
                    },
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
