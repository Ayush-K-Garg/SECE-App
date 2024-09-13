import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sece_2/footer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class AlumniPage extends StatelessWidget {
  final List<Alumni> alumniList = [
    Alumni(
      name: "Mohit Ranjan",
      position: "President",
      imageUrl: "assets2/bgmi3.jpg",
      email: "johndoe@example.com",
      linkedinUrl: "https://www.linkedin.com/in/johndoe/",
    ),
    Alumni(
      name: "Ronit Ranjan",
      position: "Vice President",
      imageUrl: "assets2/cry1.jpg",
      email: "janesmith@example.com",
      linkedinUrl: "https://www.linkedin.com/in/janesmith/",
    ),
    // Add more alumni details here
  ];

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/about.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5), // Semi-transparent background
                ),
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/moon.png',
                      width: 80,
                      height: 80,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Society\nof ECE',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
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
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: screenHeight,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/about.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              AppBar(
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


              Text(
                'ALUMNI',
                style: GoogleFonts.itim(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF00008B),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Batch of 2020-2024',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.grey,
                ),

              ),
              SizedBox(height: 5),
              Divider(
                color: Colors.grey,
                indent: 40,
                endIndent: 40,
                thickness: 2,
              ),
              SizedBox(height: 60),
              Container(
                height: screenHeight * 0.5, // Adjusted height for the carousel
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: double.infinity,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.75,
                  ),
                  items: alumniList.map((alumni) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(

                          child: Card(

                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            elevation: 5,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            height: 150, // Adjusted for the blue top part
                                            decoration: BoxDecoration(
                                              color: Color(0xFF00008B), // Top half in blue
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(15),
                                                topRight: Radius.circular(15),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft: Radius.circular(15),
                                                  bottomRight: Radius.circular(15),
                                                ),
                                              ),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  SizedBox(height: 60), // Reduced space for avatar overlap
                                                  Text(
                                                    alumni.name,
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.bold,
                                                      color: Color(0xFF00008B),
                                                    ),
                                                  ),
                                                  Text(
                                                    alumni.position,
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.grey[600],
                                                    ),
                                                  ),
                                                  SizedBox(height: 5), // Reduced space between text
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      IconButton(
                                                        icon: Icon(Icons.email, color: Color(0xFF00008B)),
                                                        onPressed: () {
                                                          // Handle email tap
                                                        },
                                                      ),
                                                      IconButton(
                                                        icon: FaIcon(FontAwesomeIcons.linkedin, color: Color(0xFF00008B)),
                                                        onPressed: () {
                                                          // Handle LinkedIn tap
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      // Constrain the CircleAvatar size to avoid overflow
                                      Positioned(
                                        top: 50, // Adjusted top position for image
                                        child: CircleAvatar(
                                          radius: 100, // Increased size of the avatar
                                          backgroundColor: Colors.white,
                                          child: ClipOval(
                                            child: Image.asset(
                                              alumni.imageUrl,
                                              fit: BoxFit.cover, // Ensures the image fits properly
                                              width: 200, // Match the size of the CircleAvatar
                                              height: 200,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
              Spacer(), // Pushes the footer to the bottom if there's remaining space
              Footer(), // Footer at the end of the page
            ],
          ),
        ),
      ),
    );
  }
}

class Alumni {
  final String name;
  final String position;
  final String imageUrl;
  final String email;
  final String linkedinUrl;

  Alumni({
    required this.name,
    required this.position,
    required this.imageUrl,
    required this.email,
    required this.linkedinUrl,
  });
}
