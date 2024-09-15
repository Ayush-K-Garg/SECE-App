import 'package:flutter/material.dart';

class PlacementPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Placement Masterclass',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildProfileCard(
              name: 'Jane Smith',
              imageUrl: 'assets2/img.png',
              companyLogo: 'assets2/time.png',
            ),
            _buildProfileCard(
              name: 'Jane Smith',
              imageUrl: 'assets2/img.png',
              companyLogo: 'assets2/time.png',
            ),
            // Add more profiles as needed
          ],
        ),
      ),
    );
  }

  Widget _buildProfileCard({
    required String name,
    required String imageUrl,
    required String companyLogo,
  }) {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(4), // Border width
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.pink],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.all(8),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(imageUrl),
                backgroundColor: Colors.transparent,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return LinearGradient(
                        colors: [Colors.blue, Colors.pink],
                      ).createShader(bounds);
                    },
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle 'Know More' button press
                      },
                      style: ElevatedButton.styleFrom(
                         // Set primary to transparent for gradient effect
                        elevation: 0, // Remove elevation if desired
                      ),
                      child: Text('Know More'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(8),
              child: Image.asset(
                companyLogo,
                height: 50,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
