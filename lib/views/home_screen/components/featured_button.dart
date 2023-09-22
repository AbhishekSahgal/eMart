import 'package:emart_app/consts/consts.dart';
import 'package:flutter/cupertino.dart';

class FeaturedButtton extends StatelessWidget {
  final String title, icon;
  const FeaturedButtton({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(icon, width: 70,fit: BoxFit.fill,),
        10.widthBox,
        title.text.fontFamily(semibold).color(darkFontGrey).make(),
      ],
    ).box.width(200).margin(EdgeInsets.symmetric(horizontal: 4)).white.rounded.padding(EdgeInsets.all(4)).outerShadowSm.make();
  }
}
