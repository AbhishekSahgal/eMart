 import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/views/category_screen/categories_details.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class CategoryScreen extends StatelessWidget {
   const CategoryScreen({super.key});
 
   @override
   Widget build(BuildContext context) {
     return bgWidget(Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.transparent,
         title: categories.text.make(),
       ),
       body: Container(
padding: EdgeInsets.all(12),
         child: GridView.builder(
           shrinkWrap: true,
           itemCount: 9,
           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisSpacing: 8, crossAxisSpacing: 8,mainAxisExtent: 240), itemBuilder: (context, index) {
           return Column(
             children: [
Image.asset(categoriesImg[index], height: 190, width: 200, fit: BoxFit.fitHeight,),
               10.heightBox,
               categoriesList[index].text.color(darkFontGrey).align(TextAlign.center).make(),
             ],
           ).box.white.roundedSM.clip(Clip.antiAlias).outerShadowSm.make().onTap(() {
             Get.to(()=> CategoriesDetails(title: categoriesList[index]));
           });
         },),
       ),
     ),
     );
   }
 }
 