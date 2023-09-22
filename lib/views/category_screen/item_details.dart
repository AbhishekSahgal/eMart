import 'package:emart_app/consts/colors.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/widgets_common/custom_btn.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Itemdetails extends StatelessWidget {
  final String? title;
  const Itemdetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: title!.text.color(darkFontGrey).fontFamily(bold).make(),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.share_outlined,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,)),
      ],
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    //   Swiper Section
                      VxSwiper.builder(
                        autoPlay: true,
                        height: 350,
                        aspectRatio: 16/9,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                        return Image.asset(imgFc5, width: double.infinity, fit: BoxFit.cover,);
                      },
                      ),
                      10.heightBox,
                    //   title and detail section
                      title!.text.size(16).color(darkFontGrey).fontFamily(bold).make(),
                      10.heightBox,
                    //   rating
                      VxRating(onRatingUpdate: (value) {

                      },
                        normalColor: textfieldGrey,
                        selectionColor: golden,
                        // maxRating: 5,
                        count: 5,
                        size: 25,
                        stepInt: true,
                      ),
                      10.heightBox,
                      "\$30,000".text.color(redColor).fontFamily(bold).size(18 ).make(),
                      10.heightBox,
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              "Seller".text.make(),
                              5.heightBox,
                              "In House Brands".text.fontFamily(semibold).size(16).color(darkFontGrey).make(),
                            ],
                          )),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(Icons.message_rounded, color: darkFontGrey,),
                          ),
                        ],
                      ).box.height(60).padding(EdgeInsets.symmetric(horizontal: 16)).color(textfieldGrey).make(),

                    //   color Section
                      20.heightBox,
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 100,
                                child: "Color: ".text.color(textfieldGrey).make(),
                              ),
                              Row(
                                children: List.generate(3, (index) => VxBox().size(40, 40).margin(EdgeInsets.symmetric(horizontal: 6)).roundedFull.color(Vx.randomPrimaryColor).make()),
                              )
                            ],
                          ).box.padding(EdgeInsets.all(8)).make(),

                        //   Quantity section
                          Row(
                            children: [
                              SizedBox(
                                width: 100,
                                child: "Quantity: ".text.color(textfieldGrey).make(),
                              ),
                              Row(
                                children: [
                                  IconButton(onPressed: (){}, icon: Icon(Icons.remove)),
                                  "0".text.size(16).color(darkFontGrey).fontFamily(bold).make(),
                                  IconButton(onPressed: (){}, icon: Icon(Icons.add)),
                                  10.widthBox,
                                  "(0 available)".text.color(textfieldGrey).make(),
                                ],
                              ),
                            ],
                          ).box.padding(EdgeInsets.all(8)).make(),
                          // total row
                          Row(
                            children: [
                              SizedBox(
                                width: 100,
                                child: "Total: ".text.color(textfieldGrey).make(),
                              ),
                              "0.00".text.color(redColor).size(16).fontFamily(bold).make()
                            ],
                          ).box.padding(EdgeInsets.all(8)).make()

                        ],
                      ).box.shadowSm.white.make(),
                    //   description section
                      10.heightBox,
                      "Description".text.color(darkFontGrey).fontFamily(semibold).make(),
                      10.heightBox,
                      "This is a dummy item and description here..".text.color(darkFontGrey).make(),

                    //    buttons Section
                      10.heightBox,
                      ListView(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        children: List.generate(itemDeatilsButtonList.length, (index) => ListTile(
                          title: "${itemDeatilsButtonList[index]}".text.fontFamily(semibold).color(darkFontGrey).make(),
                          trailing: Icon(Icons.arrow_forward_outlined),
                        )),
                      ),
20.heightBox,
                    //   product may like section
                      productmaylike.text.fontFamily(bold).size(16).color(darkFontGrey).make(),
                      10.heightBox,
                      SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
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
              ),
          ),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: outBtn(title: "Add to cart", onPress: (){

            }),
          )
        ],
      ),
    );
  }
}
