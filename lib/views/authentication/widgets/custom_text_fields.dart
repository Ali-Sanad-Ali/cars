import 'package:flutter/material.dart';

class CustomTextFields extends StatelessWidget {
  const CustomTextFields(
      {super.key,
      required this.controller,
      this.keyboardType,
      this.isObscure = false,
      this.obscureCharacter = '*',
      this.hintText,
      this.prefixIcon,
      this.suffixIcon});

  final TextEditingController controller;
  final TextInputType? keyboardType;
  final bool isObscure;
  final String obscureCharacter;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: isObscure,
        obscuringCharacter: obscureCharacter,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.blue, width: 1.5),
          ),
        ),
      ),
    );
  }
}
