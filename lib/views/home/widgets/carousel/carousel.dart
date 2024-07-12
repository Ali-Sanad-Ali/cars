import 'package:carousel_slider/carousel_slider.dart';
import 'package:cars_app/views/home/data/carosuel.dart';
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  final List<CarouselAd> carouselAds;

  const Carousel({super.key, required this.carouselAds});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        items: carouselAds.map((ad) {
          return Padding(
            padding: const EdgeInsets.only(right: 1.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: AssetImage(ad.Image_AD),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Text(
                  ad.username,
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                ),
              ),
            ),
          );
        }).toList(),
        options: CarouselOptions(
          height: 200.0,
          enlargeCenterPage: false,
          autoPlay: true,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 1000),
          viewportFraction: 1,
        ),
      ),
    );
  }
}
