import 'package:emart_app/consts/consts.dart';
import 'package:flutter/cupertino.dart';

class HomeButton extends StatelessWidget {
  final double width;
  final double height;
  final String icon;
  final String title;
  final VoidCallback? onPress;

  const HomeButton({super.key, required this.width, required this.height, required this.icon, this.onPress, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(icon,width: 26,),
        10.heightBox,
        title.text.fontFamily(semibold).color(darkFontGrey).make(),
      ],
    ).box.rounded.white.size(width, height).make();
  }
}
