import 'package:cars_app/views/home/widgets/carousel.dart';
import 'package:cars_app/views/home/widgets/header/custom_avatar.dart';
import 'package:cars_app/views/home/widgets/header/custom_text_field.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Row(children: [
              Text(
                'A P P  N A M E',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Spacer(),
              CustomAvatar(imagePath: 'assets/car.jpeg'),
            ]),
            CustomTextField(),
            Carousel(),
          ],
        ),
      ),
    );
  }
}
