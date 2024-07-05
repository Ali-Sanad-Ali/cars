import 'package:cars_app/views/home/widgets/carousel.dart';
import 'package:cars_app/views/home/widgets/search_bar/custom_avatar.dart';
import 'package:cars_app/views/home/widgets/search_bar/custom_text_field.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 45,
        color: Colors.white,
        child: Column(
          children: [
            Row(children: [
              Expanded(child: CustomTextField()),
              SizedBox(width: 20),
              CustomAvatar(imagePath: 'assets/car.jpeg'),
            ]),
            SizedBox(width: 20),
            Carousel(),
          ],
        ),
      ),
    );
  }
}
