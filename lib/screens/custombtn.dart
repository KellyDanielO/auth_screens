
import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  final String text;
  final Color? btnColor;
  final Color? btnTextColor;
  final double width;
  const CustomBtn({
    super.key,
    required this.width,
    required this.text,
    this.btnColor,
    this.btnTextColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
          color: btnColor, borderRadius: BorderRadius.circular(10)),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Text(
          text,
          style: TextStyle(
            color: btnTextColor,
            fontSize: 16,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}
