import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  final String _linkedinUrl = 'https://www.linkedin.com/company/sece-nitjsr';
  final String _youtubeUrl = 'https://www.youtube.com/@SECENITJamshedpur';
  final String _instagramUrl = 'https://www.instagram.com/secenitjsr/';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:10),
      color: Colors.grey[300],
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Follow us',
            style: TextStyle(color: Colors.grey, fontSize: 9),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipOval(
                child: IconButton(
                  icon: Image.asset(
                    'assets/linkedin1.png',
                    width: 20,
                    height: 20,
                  ),
                  onPressed: () => launch(_linkedinUrl),
                ),
              ),
              SizedBox(width: 20),
              ClipOval(
                child: IconButton(
                  icon: Image.asset(
                    'assets/youtube1.png',
                    width: 40,
                    height: 40,
                  ),
                  onPressed: () => launch(_youtubeUrl),
                ),
              ),
              SizedBox(width: 20),
              ClipOval(
                child: IconButton(
                  icon: Image.asset(
                    'assets/instagram1.png',
                    width: 40,
                    height: 40,
                  ),
                  onPressed: () => launch(_instagramUrl),
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Text(
            'Contact us: sece.student@nitjsr.ac.in',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          Text(
            '© 2024 SECE',
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
