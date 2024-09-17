import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photo_view/photo_view.dart';
import 'package:sece_2/footer.dart';

class PlacementPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFF0A0549), // Semi-transparent background
                ),
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/moon.png',
                      width: 60,
                      height: 60,
                    ),
                    SizedBox(width: 1),
                    Text(
                      'Society of Electronics &\nCommunication Engg.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              _buildDrawerItem(Icons.home, 'Home', context, '/'),
              _buildDrawerItem(Icons.info, 'About', context, '/about'),
              _buildDrawerItem(Icons.event, 'Events', context, '/events'),
              _buildDrawerItem(Icons.link, 'Nexus', context, '/Nexus'),
              _buildDrawerItem(Icons.group, 'Team Members', context, '/Members'),
              _buildDrawerItem(Icons.group, 'Alumni', context, '/Alumni'),
              _buildDrawerItem(Icons.corporate_fare, 'Placement Masterclass', context, '/Placement'),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '  PLACEMENT\nMASTERCLASS',
          style: GoogleFonts.itim(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              _buildProfileCard(
                name: 'Vikash Kumar',
                imageUrl: 'assets2/vikash2.png',
                image:'assets2/vikash.png',
                companyLogo: 'assets2/deshaw.png',
                context: context,
              ),
              _buildProfileCard(
                name: 'Ronit Ranjan',
                imageUrl: 'assets2/ronit2.png',
                image:'assets2/ronit.png',
                companyLogo: 'assets2/money.png',
                context: context,
              ),
              _buildProfileCard(
                name: 'Mohit Ranjan',
                imageUrl: 'assets2/mohit2.png',
                image:'assets2/mohit.png',
                companyLogo: 'assets2/pal.png',
                context: context,
              ),
              _buildProfileCard(
                name: 'Aditya Kumar',
                imageUrl: 'assets2/aditya2.png',
                image:'assets2/aditya.png',
                companyLogo: 'assets2/intuit.png',
                context: context,
              ),
              _buildProfileCard(
                name: 'Yogesh Kumar',
                imageUrl: 'assets2/yogesh2.png',
                image:'assets2/yogesh.png',
                companyLogo: 'assets2/arcesium.png',
                context: context,
              ),
              _buildProfileCard(
                name: 'Rohit Kumar',
                imageUrl: 'assets2/rohit2.png',
                image:'assets2/rohit.png',
                companyLogo: 'assets2/lowes.png',
                context: context,
              ),
              _buildProfileCard(
                name: 'Ishika Kumari',
                imageUrl: 'assets2/ishika2.png',
                image:'assets2/ishika.png',
                companyLogo: 'assets2/invesco.png',
                context: context,
              ),
              _buildProfileCard(
                name: 'Akansha Priya',
                imageUrl: 'assets2/akansha2.png',
                image:'assets2/akansha.png',
                companyLogo: 'assets2/lowes.png',
                context: context,
              ),
              // Add more profiles as needed
            ],
          ),
        ),
      ),
    );
  }

  // Drawer Item Builder
  ListTile _buildDrawerItem(IconData icon, String title, BuildContext context, String route) {
    return ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(title, style: TextStyle(color: Colors.black)),
      onTap: () {
        Navigator.pushNamed(context, route);
      },
    );
  }

  // Profile Card Widget
  Widget _buildProfileCard({
    required String name,
    required String imageUrl,
    required String image,
    required String companyLogo,
    required BuildContext context,
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
            // Profile Image (Avatar)
            Container(
              margin: EdgeInsets.all(8),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(imageUrl),
                backgroundColor: Colors.transparent,
              ),
            ),
            // Name and 'Know More' Button
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
                        // Show image in a pop-up with zoom and pan
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Dialog(
                              child: Container(
                                height: 400,
                                width: 300,
                                child: PhotoView(
                                  imageProvider: AssetImage(image),
                                  backgroundDecoration: BoxDecoration(
                                    color: Colors.black,
                                  ),
                                  minScale: PhotoViewComputedScale.contained,
                                  maxScale: PhotoViewComputedScale.covered * 2.0,
                                ),
                              ),
                            );
                          },
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        backgroundColor: Colors.transparent,
                        elevation: 0, // Remove elevation
                      ),
                      child: Text('Know More', style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ),
            // Company Logo
            GestureDetector(
              onTap: () {
                // When image is clicked, show it in a dialog
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Dialog(
                      backgroundColor: Colors.transparent, // Transparent background
                      child: ClipOval(
                        child: Image.asset(
                          companyLogo,
                          fit: BoxFit.contain,  // Show image in full without distortion
                        ),
                      ),
                    );
                  },
                );
              },
              child: Container(
                margin: EdgeInsets.all(8),
                child: ClipOval(
                  child: SizedBox(
                    width: 50,  // Adjust as necessary
                    height: 50,  // Adjust as necessary
                    child: Image.asset(
                      companyLogo,
                      fit: BoxFit.contain,  // Prevents image cutting, maintains aspect ratio
                    ),
                  ),
                ),
              ),
            )


          ],
        ),
      ),
    );
  }
}
