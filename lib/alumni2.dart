import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sece_2/footer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cached_network_image/cached_network_image.dart';

class AlumniPage2 extends StatelessWidget {
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

          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                    color: Color(0xFF00008B) // Semi-transparent background
                ),
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/moon.png',
                      width: 60,
                      height: 60,
                    ),
                    SizedBox(width: 10),
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
                centerTitle: true,
                title: Text(
                  'ALUMNI',
                  style: GoogleFonts.itim(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF00008B),
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



      SizedBox(height: 20),
      Padding(
          padding: const EdgeInsets.only(left: 8.0,right:8 ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/Alumni2');
                },
                icon: Icon(Icons.group,
                    color: ModalRoute.of(context)?.settings.name == '/Alumni2'
                        ? Colors.white // Highlight the icon when on this page
                        : Color(0xFF313B49)),
                label: Text(
                  "2019-2023",
                  style: TextStyle(
                      fontSize: 18,
                      color: ModalRoute.of(context)?.settings.name == '/Alumni2'
                          ? Colors.white // Highlight the text when on this page
                          : Color(0xFF313B49)),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  backgroundColor: ModalRoute.of(context)?.settings.name == '/Alumni2'
                      ? Color(0xFF313B49) // Highlight the button background
                      : Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Rounded corners
                  ),
                ),
              ),
              SizedBox(width: 5,),

              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/Alumni');
                },
                icon: Icon(Icons.group,
                    color: ModalRoute.of(context)?.settings.name == '/Alumni'
                        ? Colors.white // Highlight the icon when on this page
                        : Color(0xFF313B49)),
                label: Text(
                  "2020-2024",
                  style: TextStyle(
                      fontSize: 18,
                      color: ModalRoute.of(context)?.settings.name == '/Alumni'
                          ? Colors.white // Highlight the text when on this page
                          : Color(0xFF313B49)),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  backgroundColor: ModalRoute.of(context)?.settings.name == '/Alumni'
                      ? Color(0xFF313B49) // Highlight the button background
                      : Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Rounded corners
                  ),
                ),
              ),
            ],
          )

      ),
      SizedBox(height: 10),
      Divider(
        color: Colors.grey,
        indent: 40,
        endIndent: 40,
        thickness: 2,
      ),
      SizedBox(height: 40),
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
                return Container(decoration: BoxDecoration(
                  color: Colors.white, // Background color of the card
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3), // Shadow color with some opacity
                      spreadRadius: 2, // How much the shadow spreads
                      blurRadius: 6, // Blur radius
                      offset: Offset(3, 3), // Horizontal and vertical offset of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(8), // Optional: To give rounded corners
                ),

                  child: Card(

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    elevation: 8,
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
                                    height: 150, // Adjusted for the green top part
                                    decoration: BoxDecoration(
                                      color: Color(0xFF00008B), // Top half in green
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
                                              color: Colors.grey,
                                            ),
                                          ),
                                          SizedBox(height: 5), // Reduced space between text
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              IconButton(
                                                icon: Icon(Icons.email, color: Color(0xFF00008B)),
                                                onPressed: () async {
                                                  final Uri emailUri = Uri(
                                                    scheme: 'mailto',
                                                    path: alumni.email,
                                                  );

                                                  if (await canLaunch(emailUri.toString())) {
                                                    await launch(emailUri.toString());
                                                  } else {
                                                    ScaffoldMessenger.of(context).showSnackBar(
                                                      SnackBar(
                                                        content: Text('Could not launch email client.'),
                                                      ),
                                                    );
                                                  }
                                                },
                                              ),



                                              IconButton(
                                                icon: FaIcon(FontAwesomeIcons.linkedin, color: Color(0xFF00008B)),
                                                onPressed: () async {
                                                  final url = alumni.linkedinUrl;
                                                  if (await canLaunch(url)) {
                                                    await launch(url);
                                                  } else {
                                                    throw 'Could not launch $url';
                                                  }
                                                },



                                                // Handle LinkedIn tap

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
                                top: 50, // Adjust top position for the image
                                child: GestureDetector(
                                  onTap: () {
                                    // Show full-screen dialog with the image
                                    showDialog(
                                      context: context,
                                      builder: (_) => Dialog(
                                        backgroundColor: Colors.black, // Black background for better viewing
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.pop(context); // Close dialog on tap
                                          },
                                          child: CachedNetworkImage(
                                            imageUrl: alumni.imageUrl, // Network image URL
                                            fit: BoxFit.contain, // Ensure image fits the full screen
                                            placeholder: (context, url) => Center(
                                              child: CircularProgressIndicator(), // Show loading indicator
                                            ),
                                            errorWidget: (context, url, error) => Icon(
                                              Icons.error,
                                              size: 50,
                                              color: Colors.red, // Show error icon if image fails to load
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                  child: CircleAvatar(
                                    radius: 100, // Size of the avatar
                                    backgroundColor: Colors.white,
                                    child: ClipOval(
                                      child: CachedNetworkImage(
                                        imageUrl: alumni.imageUrl, // Network image URL
                                        fit: BoxFit.cover, // Ensure image fits properly inside the circle
                                        width: 200, // Match size of the CircleAvatar
                                        height: 200,
                                        placeholder: (context, url) => CircularProgressIndicator(), // Loading placeholder
                                        errorWidget: (context, url, error) => Icon(
                                          Icons.error,
                                          size: 50,
                                          color: Colors.red, // Error icon for failed loading
                                        ),
                                      ),
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
      SizedBox(height: 45,),
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
