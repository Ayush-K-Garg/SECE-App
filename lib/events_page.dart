import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sece_2/footer.dart';
import 'package:table_calendar/table_calendar.dart';
import 'Nexus.dart';
import 'package:google_fonts/google_fonts.dart';

class EventsPage extends StatefulWidget {
  @override
  _EventsPageState createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  void _showEventDetails(BuildContext context, Map<String, String> event) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              event['title'] ?? 'No Title',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 16),
            Text(
              event['description'] ?? 'No description available',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 1),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Close'),
            ),
          ],
        ),
      ),
    );
  }

// Function to show full image in a modal
  void _showFullImage(BuildContext context, String? imagePath) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        child: Container(
          padding: EdgeInsets.all(8),
          child: Image.asset(
            imagePath ?? 'assets/about.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
  final List<Map<String, dynamic>> eventCards = [
    {
      'title': 'CP Contest',
      'description':

 "The society of electronics and communication engineering organised a two day workshop from June 19th to 20th,2024.The workshop mainly focused on uplifting the programming skills of students .The workshop offered detailed explanations of complex and crucial topics including standard template library (STL) and Binary search.Through this workshop students gained a clear understanding of competitive programming concepts and significantly enhanced their programming skills.",
      'image': 'assets2/code2.jpg', // Replace with your asset path
    },
    {
      'title': 'Cricket Tournament',
      'description': 'From 11th to 14th April, the SECE cricket tournament unleashed a wave of excitement, turning the campus into a roaring stadium! Seasoned players and enthusiastic amateurs took to the pitch, ready to prove their mettle. The grand finale on 14th April saw second-year ECE and third-year ECE students locked in a fierce, edge-of-the-seat battle. Cheers echoed with every thrilling hit and heart-stopping catch. In the end, the victorious team walked away not just with glory but also with cash prizes!',
      'image': 'assets2/cricket.jpg',
    },
    {
      'title': 'PMRF Workshop',
      'description': 'The IEEE PMRF Workshop on Computational Electromagnetics, hosted by the Society of Electronics and Communication Engineering in collaboration with the IEEE Student Chapter, took place from January 29th to February 2nd. Led by Anand Kumar, Prime Minister’s Research Fellow at IISc Bengaluru, the workshop focused on the Finite-Difference Time-Domain (FDTD) method using MATLAB. Key topics included Telegrapher’s Equations, transmission line analysis, and S-parameter calculations. Participants engaged in hands-on sessions, applying FDTD to real-world problems in telecommunications, signal processing, and RF circuit design, gaining valuable theoretical and practical knowledge in computational electromagnetics.',
      'image': 'assets2/pmrf.jpg',
    },
    {
      'title': 'Baigan Meme Quiz',
      'description': 'On January 20th, 2024, the Society of Electronics and Communication Engineering (SECE) hosted the "Baigan Meme Quiz," blending laughter and learning. The event explored the history and evolution of internet memes, decoding their origins and cultural impact while challenging participants with trivia on viral trends. It offered a fun, insightful look at digital humor and its role in shaping online culture, making Baigan a memorable meme-filled experience.',
      'image': 'assets2/baigan.jpg',
    },
    {
      'title': 'Maze Marathon',
      'description':'The Maze Marathon, held on April 7th, 2024, was an exciting blend of robotics and problem-solving. Teams of up to four members designed and programmed autonomous robots to navigate complex mazes, using sensors, actuators, and microcontrollers. With the maze layout revealed only at the start, participants faced a dynamic challenge requiring strategy and innovation. The event highlighted the teams\' technical skills and creativity, showcasing the potential of robotics in real-world problem-solving.',
      'image': 'assets2/maze.png',
    },
    {
      'title': 'IOT Innovate',
      'description':'IoT Innovate, held on April 6th, was an exciting platform for tech enthusiasts to showcase their creativity in the Internet of Things (IoT) field. The event began with an intense IoT Quiz featuring 25 challenging questions on IoT and electronics, followed by Round 2, where top teams used Arduino kits and sensors to build functional IoT solutions based on three problem statements. Projects ranged from smart home concepts to industrial automation, judged on design, implementation, and functionality. IoT Innovate highlighted participants\' technical skills and innovation, making it a standout SECE event.',
      'image': 'assets2/iot.jpg',
    },




  ];

  Map<DateTime, List<Map<String, String>>> calendarEvents = {
    DateTime.utc(2024, 9, 14): [
      {'title': 'Calendar Event 1', 'description': 'Details of Calendar Event 1'}
    ],
    DateTime.utc(2024, 9, 18): [
      {'title': 'Calendar Event 2', 'description': 'Details of Calendar Event 2'}
    ],
    DateTime.utc(2024, 9, 22): [
      {'title': 'Calendar Event 3', 'description': 'Details of Calendar Event 3'}
    ],
  };

  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  List<Map<String, String>> _selectedEvents = [];

  @override
  void initState() {
    super.initState();
    _selectedDay = _focusedDay;
    _selectedEvents = _getEventsForDay(_selectedDay!);
    print('Initial selected day: $_selectedDay'); // Debugging
    print('Initial events: $_selectedEvents'); // Debugging
  }

  List<Map<String, String>> _getEventsForDay(DateTime day) {
    final DateTime utcDay = DateTime.utc(day.year, day.month, day.day); // Convert to UTC
    List<Map<String, String>> events = calendarEvents[utcDay] ?? [];
    print('Events for $utcDay: $events'); // Debugging
    return events;
  }

  Widget _buildEventsMarker(DateTime date, List events) {
    return Positioned(
      right: 1,
      bottom: 1,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blueAccent,
        ),
        width: 8.0,
        height: 8.0,
        child: Center(
          child: Text(
            '${events.length}',
            style: TextStyle().copyWith(
              color: Colors.white,
              fontSize: 10.0,
            ),
          ),
        ),
      ),
    );
  }

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
                  color: Color(0xFF00008B), // Semi-transparent background
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
            ],
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,

        title:
        Text(
          'Events',
          style: GoogleFonts.itim(
            fontSize: 34,
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


      body: Column(
        children: [
          SizedBox(height: 50,),

          Container(

            child: Expanded(
              child: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/about.png'), // Background image
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.6), // Adjust the opacity level as needed
                        BlendMode.dstATop,
                      ),
                    ),
                    borderRadius: BorderRadius.circular(15), // Optional: for rounded corners
                  ),
                  child: Column(
                    children: [


                  CarouselSlider.builder(
                  itemCount: eventCards.length,
                  itemBuilder: (context, index, realIndex) {
                  final event = eventCards[index];

                  return Container(
                    decoration: BoxDecoration(
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

                    elevation: 8,
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(

                    child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    // Event title
                    Text(
                    event['title'] ?? 'No Title',
                    style: GoogleFonts.sofadiOne(
                    textStyle: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    ),


                    ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 1),
                    Divider(thickness: 2,
                    color: Colors.orangeAccent,
                    indent: 30,
                    endIndent: 30,),
                    SizedBox(height: 15,),

                    // Event image
                    ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                    event['image'] ?? 'assets/about.png',
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width,
                    height: 150, // Adjust height as needed
                    ),
                    ),
                    SizedBox(height: 10),

                    // Short Event description
                    Text(
                    '${event['description']?.substring(0, 150) ?? 'No description available'}...',
                    style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                    height: 1.5,
                    ),
                    ),
                    SizedBox(height: 10),

                    // "Know More" button
                      ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 10.0),
                              ),
                              onPressed: () {
                                showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
                  ),
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: MediaQuery.of(context).size.height * 0.8, // Set modal height to 80% of screen
                      padding: EdgeInsets.all(16.0),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                event['title'] ?? 'No Title',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                event['image'] ?? 'assets/about.png',
                                fit: BoxFit.cover,
                                width: MediaQuery.of(context).size.width,
                              ),
                            ),
                            SizedBox(height: 20),
                            Text(
                              event['description'] ?? 'No description available',
                              style: TextStyle(fontSize: 18, height: 1.5),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                                );
                              },
                              child: Text('Know More'),
                      )
                      ,
                    ],
                    ),
                    ),
                    ),
                    ),
                  );
                  },
                  options: CarouselOptions(
                  height: MediaQuery.of(context).size.height * 0.5, // Adjust card height as needed
                  enlargeCenterPage: true,
                  autoPlay: true,
                  viewportFraction: 0.85, // Adjust this to show parts of adjacent cards
                  aspectRatio: .8,
                    autoPlayAnimationDuration: Duration(seconds: 3)  ,
                  ),
                  ),




                  Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Event Calendar',
                          style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        height: 400, // Adjusted height for TableCalendar
                        child: TableCalendar(
                          focusedDay: _focusedDay,
                          firstDay: DateTime(2023),
                          lastDay: DateTime(2025),
                          headerStyle: HeaderStyle(
                            formatButtonVisible: false, // Hides the "2 weeks" format button
                            titleCentered: true, // Centers the month title (optional)
                          ),
                          calendarStyle: CalendarStyle(
                            todayDecoration: BoxDecoration(
                              color: Colors.orange,
                              shape: BoxShape.circle,
                            ),
                            selectedDecoration: BoxDecoration(
                              color: Colors.blue, // Color for selected day
                              shape: BoxShape.circle,
                            ),
                          ),
                          eventLoader: _getEventsForDay,
                          selectedDayPredicate: (day) {
                            return isSameDay(_selectedDay, day);
                          },
                          onDaySelected: (selectedDay, focusedDay) {
                            setState(() {
                              _selectedDay = selectedDay;
                              _focusedDay = focusedDay;
                              _selectedEvents = _getEventsForDay(selectedDay);
                            });
                            print('Selected day: $_selectedDay'); // Debugging
                            print('Selected events: $_selectedEvents'); // Debugging
                          },
                          calendarBuilders: CalendarBuilders(
                            defaultBuilder: (context, day, focusedDay) {
                              // Check if the day has events
                              final events = _getEventsForDay(day);
                              if (events.isNotEmpty) {
                                return Container(
                                  decoration: BoxDecoration(
                                    color: Colors.orange, // Set green background for event days
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: Text(
                                      '${day.day}',
                                      style: TextStyle(
                                        color: Colors.white, // Text color on event days
                                      ),
                                    ),
                                  ),
                                );
                              }
                              return null;
                            },
                            markerBuilder: (context, date, events) {
                              if (events.isNotEmpty) {
                                return Positioned(
                                  right: 1,
                                  bottom: 1,
                                  child: _buildEventsMarker(date, events),
                                );
                              }
                              return SizedBox();
                            },
                          ),
                        )


                      ),
                      _selectedEvents.isNotEmpty
                          ? ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: _selectedEvents.length,
                        itemBuilder: (context, index) {
                          final event = _selectedEvents[index];
                          return ListTile(
                            title: Text(
                              event['title'] ?? '',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            subtitle: Text(event['description'] ?? ''),
                          );
                        },
                      )
                          : Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text('No events for selected day'),
                      ),

                      Footer(),
                    ],

                  ),
                ),


              ),
            ),
          ),

         // Footer moved outside of Expanded to ensure it stays at the bottom
        ],
      ),
    );
  }
}
