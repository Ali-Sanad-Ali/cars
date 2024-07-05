import 'package:flutter/material.dart';

class CustomAvatar extends StatelessWidget {
  final String imagePath;

  const CustomAvatar({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      backgroundImage: AssetImage(imagePath),
    );
  }
}
