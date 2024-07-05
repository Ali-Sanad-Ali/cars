import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  const Carousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        items: [1, 2, 3, 4, 5].map((e) {
          return Container(
            margin: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Center(
              child: Text(
                'Item $e',
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
            ),
          );
        }).toList(),
        options: CarouselOptions(
          height: 200.0,
          enlargeCenterPage: false,
          autoPlay: true,
          aspectRatio: 10 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 1000),
          viewportFraction: 1,
        ),
      ),
    );
  }
}
