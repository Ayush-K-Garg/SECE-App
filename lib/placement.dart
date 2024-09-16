import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
              ListTile(
                leading: Icon(Icons.home, color: Colors.black),
                title: Text('Home', style: TextStyle(color: Colors.black)),
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
              ListTile(
                leading: Icon(Icons.info, color: Colors.black),
                title: Text('About', style: TextStyle(color: Colors.black)),
                onTap: () {
                  Navigator.pushNamed(context, '/about');
                },
              ),
              ListTile(
                leading: Icon(Icons.event, color: Colors.black),
                title: Text('Events', style: TextStyle(color: Colors.black)),
                onTap: () {
                  Navigator.pushNamed(context, '/events');
                },
              ),
              ListTile(
                leading: Icon(Icons.link, color: Colors.black),
                title: Text('Nexus', style: TextStyle(color: Colors.black)),
                onTap: () {
                  Navigator.pushNamed(context, '/Nexus');
                },
              ),
              ListTile(
                leading: Icon(Icons.group, color: Colors.black),
                title: Text('Team Members', style: TextStyle(color: Colors.black)),
                onTap: () {
                  Navigator.pushNamed(context, '/Members');
                },
              ),
              ListTile(
                leading: Icon(Icons.group, color: Colors.black),
                title: Text('Alumni', style: TextStyle(color: Colors.black)),
                onTap: () {
                  Navigator.pushNamed(context, '/Alumni');
                },
              ),
              ListTile(
                leading: Icon(Icons.corporate_fare, color: Colors.black),
                title: Text('Placement Masterclass', style: TextStyle(color: Colors.black)),
                onTap: () {
                  Navigator.pushNamed(context, '/Placement');
                },),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,

        title:
        Text(
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
              );}),

        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              _buildProfileCard(
                name: 'Vikash Kumar',
                imageUrl: 'assets2/code2.jpg',
                companyLogo: 'assets/linkedin1.png',
              ),
              _buildProfileCard(
                name: 'Ronit Ranjan',
                imageUrl: 'assets2/cul2.jpg',
                companyLogo: 'assets/youtube1.png',
              ),
             // Add more profiles as needed
            ],
          ),
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
                      child: Text('Know More',selectionColor: Colors.white,),
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
