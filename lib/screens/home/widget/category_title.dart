import 'package:course_app/constant/colors.dart';
import 'package:flutter/material.dart';

class CategoryTitle extends StatelessWidget {
  final String leftText;
  final String rightText;

  const CategoryTitle(this.leftText, this.rightText);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leftText,
            style: TextStyle(
                color: kFont, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            rightText,
            style: TextStyle(fontSize: 16, color: kFontLight),
          ),
        ],
      ),
    );
  }
}
