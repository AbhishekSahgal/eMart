import 'package:emart_app/consts/consts.dart';
import 'package:flutter/cupertino.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CupertinoColors.white,
      child: "Cart is empty".text.fontFamily(semibold).color(darkFontGrey).makeCentered(),
    );
  }
}
