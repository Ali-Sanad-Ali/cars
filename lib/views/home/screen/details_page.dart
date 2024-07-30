import 'package:cars_app/views/home/data/body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailsPage extends StatelessWidget {
  final BodyImages? bodyImage;

  const DetailsPage({super.key, this.bodyImage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 16.0),
            child: Row(
              children: [
                InkWell(
                  child: Icon(Icons.arrow_back),
                  onTap: () => Navigator.pop(context),
                ),
                SizedBox(
                    width: 8), // Add some space between the icon and the text
                Text(
                  'Details Page',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset(bodyImage!.imageUrl),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    bodyImage!.name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(bodyImage!.description),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: () => _openWhatsAppChat(context),
                    child: Text('Contact on WhatsApp'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _openWhatsAppChat(BuildContext context) async {
    var url = Uri.parse(
        'whatsapp://send?phone=${bodyImage?.userModel?.contactNumber}&text=${bodyImage?.name}');
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      showCupertinoDialog(
          context: context,
          builder: (context) {
            return CupertinoAlertDialog(
              title: Text("Error"),
              content: Text("Could not launch whatsapp"),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("ok"))
              ],
            );
          });
    }
  }
}
