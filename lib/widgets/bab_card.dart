import 'package:flutter/material.dart';
import 'package:fe_jurusanku/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class BabCard extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String externalUrl;

  BabCard({
    this.name = '',
    this.imageUrl = 'assets/materi.png',
    this.externalUrl = '',
  });

  // Method to launch URL
  void _launchURL() async {
    final Uri url = Uri.parse(externalUrl);
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $externalUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (externalUrl.isNotEmpty) {
          _launchURL();
        }
      },
      child: Container(
        width: 328,
        height: 259,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: white,
        ),
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 328,
              height: 191,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  topLeft: Radius.circular(12),
                ),
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 12),
            Text(
              name,
              style: headlineSmall.copyWith(fontWeight: bold),
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}
