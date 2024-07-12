import 'package:cars_app/views/home/data/carosuel.dart';
import 'package:cars_app/views/home/data/user_model.dart';
import 'package:cars_app/views/home/widgets/carousel/carousel.dart';
import 'package:cars_app/views/home/widgets/header/custom_avatar.dart';
import 'package:cars_app/views/home/widgets/header/custom_text_field.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final UserModel userModel;
  const Header({super.key, required this.userModel});

  @override
  Widget build(BuildContext context) {
    final List<CarouselAd> carouselAds = [
      CarouselAd(username: 'User1', Image_AD: 'assets/banner_cars.avif'),
      CarouselAd(username: 'User2', Image_AD: 'assets/car2.webp'),
      CarouselAd(username: 'User3', Image_AD: 'assets/car.jpg'),
      CarouselAd(username: 'User4', Image_AD: 'assets/car.jpeg'),
      CarouselAd(username: 'User5', Image_AD: 'assets/car.avif'),
    ];

    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Row(children: [
              Text(
                userModel.username,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              Spacer(),
              CustomAvatar(imagePath: userModel.imageUrl),
            ]),
            CustomTextField(),
            Carousel(carouselAds: carouselAds),
          ],
        ),
      ),
    );
  }
}
