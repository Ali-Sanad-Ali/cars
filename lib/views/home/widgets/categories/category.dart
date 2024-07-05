import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  const CategoryContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('Categories',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
            Spacer(),
            Text(
              'See all',
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          ],
        )
      ],
    );
  }
}
