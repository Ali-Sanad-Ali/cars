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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
            Spacer(),
            Text(
              'See all',
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          ],
        ),
        Container(
          height: 60,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, i) {
              return Padding(
                padding: const EdgeInsets.only(right: 10.0, top: 15),
                child: Container(
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('Delivery'),
                  )),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
