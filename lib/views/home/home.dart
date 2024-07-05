import 'package:cars_app/views/home/widgets/categories/category.dart';
import 'package:cars_app/views/home/widgets/header/header.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Header(),
            CategoryContainer(),
          ],
        ),
      ),
    );
  }
}
