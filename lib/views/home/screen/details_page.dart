import 'package:cars_app/views/home/data/body.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final BodyImages? bodyImage;

  const DetailsPage({super.key, this.bodyImage});

  @override
  Widget build(BuildContext context) {
    // Check for null and display a message if no data is found
    if (bodyImage == null) {
      return Scaffold(
        body: Center(
          child: Text('No image data found'),
        ),
      );
    }

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            child: Icon(Icons.arrow_back),
            onTap: () => Navigator.pop(context),
          ),
          SizedBox(height: 100),
          Center(
            child: Column(
              children: [
                Text('Details Page'),
                SizedBox(height: 20),
                Image.asset(bodyImage!.imageUrl), // Display the image
                SizedBox(height: 20),
                Text(bodyImage!.name), // Display the name
              ],
            ),
          ),
        ],
      ),
    );
  }
}
