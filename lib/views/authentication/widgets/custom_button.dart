import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String btnText;
  final Color btnTextColor;
  final double fontSize;
  final Color btnColor;

  const CustomButton(
      {super.key,
      required this.onTap,
      required this.btnText,
      required this.btnTextColor,
      required this.fontSize,
      required this.btnColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 300,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          backgroundColor: btnColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          btnText,
          style: TextStyle(
            color: btnTextColor,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
