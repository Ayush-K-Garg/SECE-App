import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sece_2/footer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MembersPage3 extends StatelessWidget {
  final List<Alumni> alumniList = [
    Alumni(
      name: "Priyanshu Dev",
      position: "Member",
      imageUrl: "https://drive.google.com/uc?id=1IPn1Hr1TQvPswV7VZrbrPvAXRv7aEoyW",
      email: "priyanshu.dev4396@gmail.com",
      linkedinUrl: "https://www.linkedin.com/in/priyanshu-dev29",
    ),
    Alumni(
      name: "Ankit Singh",
      position: "Member",
      imageUrl: "https://drive.google.com/uc?id=1zDeQg0C5OCObg5A90w2zKuwZKKYadBDq",
      email: "ankitsingh2652003@gmail.com",
      linkedinUrl: "https://www.linkedin.com/in/ankit4026",
    ),
    Alumni(
      name: "Shrinkhala Shringar ",
      position: "Member",
      imageUrl: "https://drive.google.com/uc?id=1VAuhhlVU2I71hwFLYl2c-Ghn8PVALK6r",
      email: "shrinkhalashringar.000@gmail.com",
      linkedinUrl: "https://www.linkedin.com/in/shrinkhala-shringar",
    ),
    Alumni(
      name: "Basundhara Singhdeo",
      position: "Member",
      imageUrl: "https://drive.google.com/uc?id=1wyVX9d1QLhx6ClE-YsS03-g5n8427NoA",
      email: "singhdeobasundhara@gmail.com",
      linkedinUrl: "https://www.linkedin.com/in/basundhara-singhdeo-b5a74925b?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app",
    ),
    Alumni(
      name: "Ayush Raj",
      position: "Member",
      imageUrl: "https://drive.google.com/uc?id=1wBctlEyLX6MrDmFneE8rBW9t8HUhPQJA",
      email: "ayushraj4435@gmail.com",
      linkedinUrl: "https://www.linkedin.com/in/ayush-raj-5327b42a5/",
    ),
    Alumni(
      name: "Jaykant Mishra",
      position: "CP Team",
      imageUrl: "https://drive.google.com/uc?id=1yiFOjb0X7x1lY6ln9XcuGxRW1U_TB_Pg",
      email: "jaykantmishra88@gmail.com ",
      linkedinUrl: "https://www.linkedin.com/in/jaykant-mishra-a23934257/",
    ),
    Alumni(
      name: "Mainak Mishra",
      position: "CP Team",
      imageUrl: "https://drive.google.com/uc?id=1q3TKzOfgtQOMxSpefXH3d6hHtF4GqtvR",
      email: "mainakmishra00@gmail.com",
      linkedinUrl: "https://www.linkedin.com/in/mainak-mishra-7761121b3",
    ),
    Alumni(
      name: "Gautam Kumar",
      position: "CP Team",
      imageUrl: "https://drive.google.com/uc?id=1Ba1TkFFTsGpTHodJ7U3bkaBk7HCDjiG6",
      email: "gautamtherock239@gmail.com",
      linkedinUrl: "https://www.linkedin.com/in/gautam-kumar-589103250?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app",
    ),
    Alumni(
      name: "M Yagnesh",
      position: "CP Team",
      imageUrl: "https://drive.google.com/uc?id=1DGZm6tuXW6RIq9h4qGhBIsxySXhSX-w_",
      email: "yagnesh1192005@gmail.com",
      linkedinUrl: "https://www.linkedin.com/in/yagnesh-m-70b252258?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app",
    ),
    Alumni(
      name: "Hrishita Singh",
      position: "Content Team Member",
      imageUrl: "https://drive.google.com/uc?id=1Auk1SuVbfZkOH6RFyXiJtyVe70TCIzER",
      email: "hrishitasingh373@gmail.com",
      linkedinUrl: "https://www.linkedin.com/in/hrishita-singh-a12741224/",
    ),
    Alumni(
      name: "Neha Singh",
      position: "Member",
      imageUrl: "https://drive.google.com/uc?id=1Isw1Z8g6D7fMMISNDom6OPqkFbxRufRO",
      email: "ns924732@gmail.com",
      linkedinUrl: "https://www.linkedin.com/in/neha-singh-9619ab25a",
    ),
    Alumni(
      name: "N.V.Aditya",
      position: "EM and PnD",
      imageUrl: "https://drive.google.com/uc?id=1qWI6CblaF7-r5FpFyJl-Cvy7xdcoz-dv",
      email: "2022ugec042@nitjsr.ac.in",
      linkedinUrl: "https://www.linkedin.com/in/aditya-n-aa632b27a",
    ),
    Alumni(
      name: "Aanchal Sikarwar ",
      position: "Member",
      imageUrl: "https://drive.google.com/uc?id=1F7c3VnpoM435H1E7dIBrq_L2nDSHW6Y6",
      email: "aanchal3104@gmail.com",
      linkedinUrl: "https://www.linkedin.com/in/aanchal-sikarwar-711223258",
    ),
    Alumni(
      name: "Simran Gupta",
      position: "Member",
      imageUrl: "https://drive.google.com/uc?id=1gudOWhsCLXwKNl87phqS0YSUeDES4TgY",
      email: "simrangupta100029@gmail.com",
      linkedinUrl: "https://www.linkedin.com/in/simran-gupta29",
    ),
    Alumni(
      name: "Shreya Priyadarshni ",
      position: "Member",
      imageUrl: "https://drive.google.com/uc?id=1e2mwAqZVyN_4Q_7fGF-InzOIyn_mvJQL",
      email: "2022ugec027@nitjsr.ac.in",
      linkedinUrl: "https://www.linkedin.com/in/shreya-priyadarshni-aa323a270?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app",
    ),
    Alumni(
      name: "Moumita Maji",
      position: "Member",
      imageUrl: "https://drive.google.com/uc?id=1ymuQrLz4ymF9IheDSAg-LrUwwrC0JCZQ",
      email: "moumitamaji83@gmail.com",
      linkedinUrl: "https://www.linkedin.com/in/moumita-maji-761741271",
    ),
    Alumni(
      name: "Mohammad Safi Wasif ",
      position: "CP team",
      imageUrl: "https://drive.google.com/uc?id=1kbxzuEWoPrWJqXHilmJmOkuoUdXoNu44",
      email: "safiwasif101@gmail.com",
      linkedinUrl: "https://www.linkedin.com/in/md-safi-wasif-161b222b5?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app",
    ),
    Alumni(
      name: "Danish Javed ",
      position: "Member",
      imageUrl: "https://drive.google.com/uc?id=1Q3GYycx8zsmHHPdZuY8qnldtcsGlShkm",
      email: "danishjaved03191@gmail.com",
      linkedinUrl: "https://www.linkedin.com/in/danish-javed-68180825b/",
    ),
    Alumni(
      name: "Anany Lohia",
      position: "Creative and CA team",
      imageUrl: "https://drive.google.com/uc?id=1xX8O3u4_Hj9Ly-EiQC-h5_JWGMf4wSl4",
      email: "lohia.anany16@gmail.com",
      linkedinUrl: "https://www.linkedin.com/in/ananyakrlohia/",
    ),
    Alumni(
      name: "Khushi",
      position: "Member",
      imageUrl: "https://drive.google.com/uc?id=1RQE0dDQMkGYsWGPb6UaITnfYfPnZRP_w",
      email: "11e21khushi@gmail.com",
      linkedinUrl: "https://www.linkedin.com/in/khushi-585ba327b/",
    ),
    Alumni(
      name: "Jackline D Kerketta",
      position: "Content Team",
      imageUrl: "https://drive.google.com/uc?id=1NHuxz5BhGsLYxDu68Y6O0ndqE_CRgecf",
      email: "2022ugec031@nitjsr.com",
      linkedinUrl: "https://www.linkedin.com/in/jackline-d-kerketta-3ba184268",
    ),
    Alumni(
      name: "Nikhil Nukala",
      position: "Member",
      imageUrl: "https://drive.google.com/uc?id=10BZgOs3GA0PU58AOfhvy0kNDMH-jvNJe",
      email: "strawhatnikhil@gmail.com",
      linkedinUrl: "https://www.linkedin.com/in/nikhilnukala?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=ios_app",
    ),
    Alumni(
      name: "L prasanna kumar ",
      position: "Core",
      imageUrl: "https://drive.google.com/uc?id=1QCxIVfpId8e7ya-wqxa85ZRoZkQgKXm7",
      email: "lanka2003kumar@gmail.com",
      linkedinUrl: "https://www.linkedin.com/in/l-prasanna-kumar-755540252?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app",
    ),
    Alumni(
      name: "Prince Agastya Jaiswal",
      position: "Member",
      imageUrl: "https://drive.google.com/uc?id=1mxKQ-JrprUunWVkJkNgdJuV0ZXmAJMG6",
      email: "princejaiswal5465@gmail.com",
      linkedinUrl: "https://www.linkedin.com/in/prince-jaiswal-425074250/",
    ),
    Alumni(
      name: "Subhomoy Maji",
      position: "Member",
      imageUrl: "https://drive.google.com/uc?id=1ZL4fNlsH2KHilyZ0WKKeeW-ItJJZUlOZ",
      email: "majisubhomoy@gmail.com",
      linkedinUrl: "https://www.linkedin.com/company/sece-nitjsr",
    ),
    Alumni(
      name: "Mayank Raj",
      position: "Member",
      imageUrl: "https://drive.google.com/uc?id=1sdme19MchRRZzsTHELgGU-k5ndXiZkRA",
      email: "rajmayank528@gmail.com",
      linkedinUrl: "https://www.linkedin.com/in/mayank-raj678",
    ),
    Alumni(
      name: "Nityanand Kumar",
      position: "Member",
      imageUrl: "https://drive.google.com/uc?id=1NftFzxrNWNUAFUab99FuCQ_FFeFH1FTH",
      email: "nityanandkumar752@gmail.com",
      linkedinUrl: "https://www.linkedin.com/in/nityanand-kumar-7399942b5/",
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
                    color: Color(0xFF0A0549) // Semi-transparent background
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
      body: SingleChildScrollView(
        child: Container(
          height: screenHeight,

          child: Column(
            children: [
              AppBar(
                centerTitle: true,

                title:
                Text(
                  'MEMBERS',
                  style: GoogleFonts.itim(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF3686F4),
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
                          Navigator.pushNamed(context, '/Members');
                        },
                        icon: Icon(Icons.group,
                            color: ModalRoute.of(context)?.settings.name == '/Members'
                                ? Colors.white // Highlight the icon when on this page
                                : Color(0xFF313B49)),
                        label: Text(
                          "2021-2025",
                          style: TextStyle(
                              fontSize: 18,
                              color: ModalRoute.of(context)?.settings.name == '/Members'
                                  ? Colors.white // Highlight the text when on this page
                                  : Color(0xFF313B49)),
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                          backgroundColor: ModalRoute.of(context)?.settings.name == '/Members'
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
                          Navigator.pushNamed(context, '/Members3');
                        },
                        icon: Icon(Icons.group,
                            color: ModalRoute.of(context)?.settings.name == '/Members3'
                                ? Colors.white // Highlight the icon when on this page
                                : Color(0xFF313B49)),
                        label: Text(
                          "2022-2026",
                          style: TextStyle(
                              fontSize: 18,
                              color: ModalRoute.of(context)?.settings.name == '/Members3'
                                  ? Colors.white // Highlight the text when on this page
                                  : Color(0xFF313B49)),
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                          backgroundColor: ModalRoute.of(context)?.settings.name == '/Members3'
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
                                              color: Color(0xFF3686F4), // Top half in green
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(15),
                                                topRight: Radius.circular(15),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Color(0xFF313B49),
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
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  Text(
                                                    alumni.position,
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      color: Color(0xFF3686F4),
                                                    ),
                                                  ),
                                                  SizedBox(height: 5), // Reduced space between text
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      IconButton(
                                                        icon: Icon(Icons.email, color: Colors.white),
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
                                                        icon: FaIcon(FontAwesomeIcons.linkedin, color: Colors.white),
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
