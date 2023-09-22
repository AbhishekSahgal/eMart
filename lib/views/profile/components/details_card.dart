import 'package:emart_app/consts/consts.dart';
import 'package:flutter/cupertino.dart';

class DetailsCard extends StatelessWidget {
  final width;
  final String count;
  final String title;
  const DetailsCard({super.key, required this.width, required this.count, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        count.text.fontFamily(bold).color(darkFontGrey).size(16).make(),
        5.heightBox,
        title.text.color(darkFontGrey).make(),
      ],
    ).box.rounded.white.width(width).height(80).padding(EdgeInsets.all(4)).make();
  }
}
