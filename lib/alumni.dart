import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sece_2/footer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AlumniPage(),
    );
  }
}

class AlumniPage extends StatefulWidget {
  @override
  _BatchPageState createState() => _BatchPageState();
}

class _BatchPageState extends State<AlumniPage> {
  String selectedBatch = "2019";

  // Data for Batch 2019 and 2020
  final Map<String, List<Map<String, String>>> batchData = {
    "2019": [
      {"name": "Soumen Patra", "por": "President"},
      {"name": "Trishurya Saha", "por": "Vice President"},
      {"name": "Ayush Kumar Choudhary", "por": "General Secretary"},
      {"name": "Aman Rajak", "por": "Treasurer"},
      {"name": "Raman Kumar", "por": "Technical Secretary"},
      {"name": "Indra Karan", "por": "CA Head"},
      {"name": "Hitika Kumari", "por": "CA Head"},
      {"name": "Aditya Raj Srivastava", "por": "App Dev Head"},
      {"name": "Arpit Raj Ambasta", "por": "Web Dev Head"},
      {"name": "Naved Sohail", "por": "CP Head"},
      {"name": "Athota Sarala", "por": "PR Head"},
      {"name": "Nidhi Bathwal", "por": "PR Head"},
      {"name": "M. Prathyusha", "por": "EM Head"},
      {"name": "K. Shiva Chandra", "por": "EM Head"},
      {"name": "Aditya Raj Sharma", "por": "Creative Head"},
      {"name": "Priya Singh", "por": "Creative Head"},
      {"name": "Yash Baranwal", "por": "CP Head"},
      {"name": "Ayushi Sinha", "por": "Content Head"},
      {"name": "Shashank Shekhar", "por": "Content Head"},
    ],
    "2020": [
      {"name": "Mohit Ranjan", "por": "President"},
      {"name": "Arpit Kumar", "por": "Vice President"},
      {"name": "Shruti Kumari", "por": "General Secretary"},
      {"name": "Yogesh Kumar", "por": "Treasurer"},
      {"name": "Omkar Kumar Pandey", "por": "CA Head"},
      {"name": "Karan Kumar", "por": "EM Head"},
      {"name": "Akansha Priya", "por": "Content Head"},
      {"name": "Aditya Kumar", "por": "CP Head"},
      {"name": "Naman Raj", "por": "Creative Head"},
      {"name": "Ankit Kumar", "por": "Web Dev Head"},
      {"name": "Vikash Kumar", "por": "Technical Secretary"},
      {"name": "Nilesh Dawn", "por": "Member"},
      {"name": "Pratik Kumar", "por": "Member"},
      {"name": "Skand Sharma", "por": "Member"},
      {"name": "Ishika Kumari", "por": "Member"},
      {"name": "Ankit Kumar", "por": "Member"},
      {"name": "Rohit Kumar", "por": "Member"},
      {"name": "Aditya", "por": "Member"},
      {"name": "Sumit", "por": "Member"},
      {"name": "Rohith Kumar", "por": "Member"},
      {"name": "Nivedita", "por": "Member"},
      {"name": "Jaychandra", "por": "Member"},
      {"name": "Gautam", "por": "Member"},
      {"name": "Amitha", "por": "Member"},
      {"name": "Nandini Rastogi", "por": "Member"},
      {"name": "Ayush Ambasta", "por": "Member"},



      // Add more members for Batch 2020 as needed
    ]
  };

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
                title:
                    Text('Team Members', style: TextStyle(color: Colors.black)),
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
                title: Text('Placement Masterclass',
                    style: TextStyle(color: Colors.black)),
                onTap: () {
                  Navigator.pushNamed(context, '/Placement');
                },
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'ALUMNI',
          style: GoogleFonts.itim(
            fontSize: 34,
            fontWeight: FontWeight.bold,
            color: Color(0xFF3686F4),
          ),
        ),
        backgroundColor: Colors.transparent,
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
        elevation: 0,
      ),
      body: Column(
        children: [
          // Top buttons to select batch
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      selectedBatch = "2019";
                    });
                  },
                  icon: Icon(
                    Icons.group,
                    color: selectedBatch == "2019"
                        ? Colors.white // Highlight the icon when batch 2020 is selected
                        : Color(0xFF313B49),
                  ),
                  label: Text(
                    "2019-2023",
                    style: TextStyle(
                      fontSize: 18,
                      color: selectedBatch == "2019"
                          ? Colors.white // Highlight the text when batch 2020 is selected
                          : Color(0xFF313B49),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    backgroundColor: selectedBatch == "2019"
                        ? Color(0xFF313B49) // Highlight the button background when batch 2020 is selected
                        : Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), // Rounded corners
                    ),
                  ),
                ),

                ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      selectedBatch = "2020";
                    });
                  },
                  icon: Icon(
                    Icons.group,
                    color: selectedBatch == "2020"
                        ? Colors.white // Highlight the icon when batch 2020 is selected
                        : Color(0xFF313B49),
                  ),
                  label: Text(
                    "2020-2024",
                    style: TextStyle(
                      fontSize: 18,
                      color: selectedBatch == "2020"
                          ? Colors.white // Highlight the text when batch 2020 is selected
                          : Color(0xFF313B49),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    backgroundColor: selectedBatch == "2020"
                        ? Color(0xFF313B49) // Highlight the button background when batch 2020 is selected
                        : Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), // Rounded corners
                    ),
                  ),
                ),

              ],
            ),
          ),
          SizedBox(height: 25,),
          // Title and Subtitle
          Text(
            selectedBatch == "2019" ? "2K19 BATCH" : "2K20 BATCH",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          SizedBox(height: 10),
          Text(
            "Creators of Community, Architects of Tomorrow",
            style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
          ),
          SizedBox(height: 20),
          // Table headings
          Container(
            color: Colors.grey.shade300,
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "NAME",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                Text(
                  "POR",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ],
            ),
          ),
          // Scrollable list of names and POR with alternating white and grey rows
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children:
                    batchData[selectedBatch]!.asMap().entries.map((entry) {
                  int index = entry.key;
                  Map<String, String> member = entry.value;
                  return Container(
                    color: index % 2 == 0
                        ? Colors.white
                        : Colors.grey.shade200, // Alternating white and grey
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            member['name']!,
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            member['por']!,
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),

              ),

            ),
          ),
          Footer(),
        ],
      ),
    );
  }
}
