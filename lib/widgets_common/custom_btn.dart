import 'package:emart_app/consts/consts.dart';
import 'package:flutter/material.dart';

class outBtn extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onPress;
  final Color txtColor;

  const outBtn(
      {super.key,
      required this.title,
      this.color = redColor,
      required this.onPress,
      this.txtColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      child: title.text.color(txtColor).fontFamily(bold).make(),
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
      ),
    );
  }
}
