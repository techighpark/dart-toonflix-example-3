import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textColor;
  final FontWeight fontWeight;
  final double fontSize;
  final bool isBigBtn;

  const Button({
    super.key,
    required this.text,
    required this.bgColor,
    required this.textColor,
    required this.fontWeight,
    required this.fontSize,
    this.isBigBtn = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: isBigBtn ? 20 : 10,
          horizontal: isBigBtn ? 50 : 30,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontWeight: fontWeight,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
