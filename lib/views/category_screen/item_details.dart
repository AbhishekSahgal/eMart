import 'package:emart_app/consts/colors.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/widgets_common/custom_btn.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Itemdetails extends StatelessWidget {
  final String? title;
  const Itemdetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
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
                          )
                        ],
                      ).box.height(60).padding(EdgeInsets.symmetric(horizontal: 16)).color(textfieldGrey).make()
                    ],
                  ),
                ),
              ),
          ),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: outBtn(title: "Add to cart", onPress: (){}),
          )
        ],
      ),
    );
  }
}
