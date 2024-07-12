import 'package:flutter/material.dart';

class BodyContent extends StatelessWidget {
  const BodyContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 18.0),
          child: GridView.count(
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.zero, // Remove default padding at top
            crossAxisCount: 2,
            mainAxisSpacing: 8.0, // Space between rows
            crossAxisSpacing: 8.0, // Space between columns
            childAspectRatio: 1.0, // Width to height ratio of grid items
            children: List.generate(40, (index) {
              return Container(
                  decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10.0),
              ));
            }),
          ),
        ),
      ),
    );
  }
}
