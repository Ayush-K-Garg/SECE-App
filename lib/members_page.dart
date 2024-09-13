import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sece_2/footer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MembersPage extends StatelessWidget {
  final List<Alumni> alumniList = [
    Alumni(
      name: "Ankit Kumar",
      position: "President",
      imageUrl: "https://drive.google.com/uc?id=1bGJS1L_JYFlBlqKB9XOQjYxaP3kVOCp_",

      email: "ankit.patelpatelap183@gmail.com",
      linkedinUrl: "https://www.linkedin.com/in/ankit-kumar-487994223?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app",
    ),
    Alumni(
      name: "Manish",
      position: "Vice President",
      imageUrl: "https://drive.google.com/uc?export=view&id=1Q2h6x42zRE3ndFT77MBq0-Vyt25cqXgC",
      email: "mvsmanish07@gmail.com",
      linkedinUrl: "https://www.linkedin.com/in/manish-kumar-59bb51223?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app",
    ),
    Alumni(
      name: "Anurag Sarkar ",
      position: "Technical Secretary ",
      imageUrl: "https://drive.google.com/uc?id=1MD7ykk7ZtwD3wUdVHoqwgzmCywi3jwDw",
      email: "anuragsarkar574@gmail.com",
      linkedinUrl: "https://www.linkedin.com/in/anurag-sarkar-626804233?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app",
    ),
    Alumni(
      name: "Gipashu Aryan ",
      position: "Content Head ",
      imageUrl: "https://drive.google.com/uc?id=1b1K5M70Vw3ocFVD6ERJZU_Tsj9JX4HY1",
      email: "gipashuaryan159@gmail.com",
      linkedinUrl: "https://www.linkedin.com/in/gipashu-aryan-96b286224?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app",
    ),
    Alumni(
      name: "Kaif been jawed",
      position: "Event head ",
      imageUrl: "https://drive.google.com/uc?id=1VIninjR77ww9HDi3f53CtZY5UXPjndie",
      email: "mohammadkaif43530@gmail.com",
      linkedinUrl: "https://www.linkedin.com/in/kaif-jawed-2118a427a?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=ios_app",
    ),
    Alumni(
      name: "Shashwat",
      position: "CA Head",
      imageUrl: "https://drive.google.com/uc?id=1-l8AW2bYhLvVqhPKAIVmlebdY_4CLKUJ",
      email: "Shashwat.18jan23@gmail.com",
      linkedinUrl: "https://www.linkedin.com/in/shashwat-31564a254",
    ),
    Alumni(
      name: "Ashish Satpathy",
      position: "Public Relations Head",
      imageUrl: "https://drive.google.com/uc?id=1QjgYmDS2SpOC49d3DClHeTIEF-W-wTGq",
      email: "ashish.satpathy2003@gmail.com",
      linkedinUrl: "https://www.linkedin.com/in/ashish-satpathy/",
    ),
    Alumni(
      name: "Shruti Dwivedi ",
      position: "Member",
      imageUrl: "https://drive.google.com/uc?id=1cfCg8xzMVyKUIg8K2TXNoWGakeyTphHo",
      email: "shrutimun17@gmail.com",
      linkedinUrl: "https://www.linkedin.com/in/shruti-dwivedi-a0ba1925a",
    ),
    Alumni(
      name: "Diya Singh ",
      position: "P&D Head",
      imageUrl: "https://drive.google.com/uc?id=1gZgce_7MWD6KsAN6ypaZ5ANv1Qg-yAhZ",
      email: "dip4472singh@gmail.com",
      linkedinUrl: "https://www.linkedin.com/in/diya-singh-55387b244?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app",
    ),
    Alumni(
      name: "Shristy Singh ",
      position: "Member",
      imageUrl: "https://drive.google.com/uc?id=11aArJZC5apDrqQbAA9d6RIC98_TznygE",
      email: "shristysingh1410@gmail.com",
      linkedinUrl: "https://www.linkedin.com/in/shristy-singh-1bb605244?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=ios_app",
    ),
    Alumni(
      name: "Dhinesh Potta ",
      position: "EM Head",
      imageUrl: "https://drive.google.com/uc?id=1_U3POwAAjEdv2M8NCQYd3rPtcgU42b8x",
      email: "dhinesh.jsr@gmail.com",
      linkedinUrl: "https://www.linkedin.com/in/dhinesh-potta-4261b4228?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app",
    ),
    Alumni(
      name: "Prajjwal Jain",
      position: "P&D Head",
      imageUrl: "https://drive.google.com/uc?id=1NmtEJpvh8uKkDHuHr1AkDutyOUMHdDNt",
      email: "prajjwal.jain1008@gmail.com",
      linkedinUrl: "http://linkedin.com/prajjwal-jain",
    ),
    Alumni(
      name: "Anshu Kumari ",
      position: "Joint Secretary ",
      imageUrl: "https://drive.google.com/uc?id=1b3vESdTPcy8J3cm5bBOvcPM8d2sW2Omx",
      email: "anshuk97984@gmail.com",
      linkedinUrl: "https://www.linkedin.com/in/anshu-kumari-333805223",
    ),
    Alumni(
      name: "Indrani Pal",
      position: "Member",
      imageUrl: "https://drive.google.com/uc?id=1-MLo0HjdlmwDsiVkB0xEBmKUIyXp_SZr",
      email: "2021ugec003@nitjsr.ac.in",
      linkedinUrl: "https://www.linkedin.com/in/indrani-pal-ba0607238",
    ),Alumni(
      name: "Ayush keshri ",
      position: "CP Head",
      imageUrl: "https://drive.google.com/uc?id=1b6Dv9Vi_WG-JcQ9i0MeTmX6U50WiTH5Z",
      email: "akeshri1610@gmail.com",
      linkedinUrl: "https://www.linkedin.com/in/ayush-keshri-452044230/",
    ),Alumni(
      name: "Abhishek Kumar",
      position: "Member",
      imageUrl: "https://drive.google.com/uc?id=11tPQSeztpacVbTJ3Jh-RwCCjx_ckdXW6",
      email: "abhishekdeogharia07@gmail.com",
      linkedinUrl: "https://www.linkedin.com/in/abhishek-deogharia-213941230?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app",
    ),Alumni(
      name: "Rishav Kumar",
      position: "Treasurer",
      imageUrl: "https://drive.google.com/uc?id=10rRRRRHU2fimomhq5gm1yzSlM4qwfkwV",
      email: "rishavjha771@gmail.com",
      linkedinUrl: "https://www.linkedin.com/in/rishav-kumar-a96175190/",
    ),Alumni(
      name: "Ankit Raj",
      position: "Creative Head",
      imageUrl: "https://drive.google.com/uc?id=1qRRm1fOYkEgqkow2hawI05foMo5782D2",
      email: "ankitraj.march13@gmail.com",
      linkedinUrl: "https://www.linkedin.com/in/ankit-raj-332406234",
    ),Alumni(
      name: "Chandan Kumar ",
      position: "CP Team ",
      imageUrl: "https://drive.google.com/uc?id=1p4qDSP3e5Pxkrwqran3uanMOdPvUs8Hk",
      email: "chandan123sxs@gmail.com",
      linkedinUrl: "https://www.linkedin.com/in/chandan-kumar-35b8a4243?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app",
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
                'MEMBERS',
                style: GoogleFonts.itim(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_circle_left_rounded, color: Colors.grey),
                    onPressed: () {
                      Navigator.pushNamed(context, '/Members3');
                      // Action to be performed when left arrow is pressed
                      print('Left arrow pressed');
                    },
                  ),
                  Expanded(
                    child: Text(
                      'Batch of 2021-2025',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.arrow_circle_right_rounded, color: Colors.grey),
                    onPressed: () {
                      Navigator.pushNamed(context, '/Members3');
                      // Action to be performed when right arrow is pressed
                      print('Right arrow pressed');
                    },
                  ),
                ],
              ),
              SizedBox(height: 5),
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
                                            height: 150, // Adjusted for the green top part
                                            decoration: BoxDecoration(
                                              color: Colors.green, // Top half in green
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(15),
                                                topRight: Radius.circular(15),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white12,
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
                                                      color: Colors.green,
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
                                                        icon: Icon(Icons.email, color: Colors.green),
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
                                                        icon: FaIcon(FontAwesomeIcons.linkedin, color: Colors.green),
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
              SizedBox(height: 15,),
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
