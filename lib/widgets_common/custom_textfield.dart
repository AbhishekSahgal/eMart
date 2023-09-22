import 'package:emart_app/consts/consts.dart';
import 'package:flutter/material.dart';

import '../consts/colors.dart';
import '../consts/styles.dart';

class customTextField extends StatelessWidget {
  final String title;
  final String hint;

  const customTextField({super.key, required this.title, required this.hint,});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title!.text.color(redColor).fontFamily(semibold).size(16).make(),
        5.heightBox,
        TextFormField(
          // controller: controller,
          decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(
                fontFamily: semibold,
                color: textfieldGrey,
              ),
              isDense: true,
              fillColor: lightGrey,
              filled: true,
              border: InputBorder.none,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: redColor),
              )
          ),
        ),
        7.heightBox,
      ],
    );
  }
}
