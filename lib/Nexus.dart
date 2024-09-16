import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sece_2/footer.dart';

class NexusPage extends StatefulWidget {
  @override
  _NexusPageState createState() => _NexusPageState();
}

class _NexusPageState extends State<NexusPage> {
  // Track which event's description is expanded
  Map<int, bool> isExpanded = {};

  @override
  Widget build(BuildContext context) {
    // Get the screen size using MediaQuery
    final Size screenSize = MediaQuery.of(context).size;

    // Calculate image size as a percentage of screen width
    final double imageWidth = screenSize.width * 0.95; // 80% of screen width
    final double imageHeight = screenSize.height * 0.3; // 30% of screen height

    // Event data
    final List<Map<String, dynamic>> events = [
      {
        'title': 'Digimon',
        'description': 'A premier event conducted for electronics enthusiasts which took place with the aim of encouraging students who are interested in the field of electronics. The event featured two dynamic rounds. Round 1 presented a rigorous quiz that mainly tested the basic electronics knowledge of students. Round 2 was all about solving electronics-based problem statements and implementing their ideas with provided components. Overall, the event was a great success, drawing significant participation.',
        'images': [
          'assets2/digimon1.jpg',
          'assets2/digimon2.jpg',
          'assets2/digimon3.jpg',

        ],
      },
      {
        'title': 'Codexus',

        'description': 'A highly anticipated coding competition was organized that brought together students from all years and branches. The contest was hosted on Coding Ninjas platform,this event provided an opportunity for participants to showcase their coding expertise. Apart from the top three prizes, a special reward was reserved exclusively for first-year students.',
        'images': [
          'assets2/code1.jpg',
          'assets2/code3.jpg',
          'assets2/code2.jpg',
        ],
      },
      {
        'title': 'Cryptic Circuit',

        'description': 'At the NEXUS \'23 Fest, a collaborative effort between Team Innoreva and SECE, the "Robotic Renaissance" showcase took center stage. The highlight of the event was the Cryptic Circuit competition, where robotics enthusiasts demonstrated their expertise by programming autonomous robots to navigate complex mazes and overcome obstacles .The competition pushed participants to innovate and test the limits of robotics technology. In the end, the most skilled individuals were awarded the grand prize. The success of the Cryptic Circuit competition contributed to the overall triumph of fest , making it a memorable experience for all involved.',
        'images': [
          'assets2/cry1.jpg',
          'assets2/cry2.jpg',
          'assets2/cry3.jpg',
        ],
      },
      {
        'title': 'Film Nexus',

        'description': 'The Film Nexus event at Nexus \'23 Fest brought out the creativity of aspiring filmmakers, offering a platform for them to showcase their cinematic skills. Participants were tasked with crafting a documentary that not only captured the events but also conveyed the emotions, energy, and unique connections of the fest. Each submission, limited to six minutes, had to be well-edited and include key moments from Nexus \'23. Filmmakers worked to highlight the essence of the fest in their documentaries. The event celebrated storytelling through the lens, making Film Nexus a memorable addition to the festival lineup.',
        'images': [
          'assets2/mic.JPG',
          'assets2/ket.jpg',
        ],
      },
      {
        'title': 'Talent Hunt',
        'description':'Talent Hunt was an event designed to help students unleash their hidden talents. Participants dazzled the audience with their skills in singing, beatboxing, dancing, roasting, magic tricks, art and craft, and stand-up comedy. The competition spanned two thrilling rounds: an elimination round and a grand finale. Exciting prizes awaited the winners, adding to the competitive spirit. The students\' enthusiasm and vibrant performances made this event unforgettable, creating a vivid tapestry of talent and creativity that captivated everyone.',

        'images': [
          'assets2/talent1.jpg',
          'assets2/ket.jpg',
        ],
      },
      {
        'title': 'Perfect Pixel',
         'description':'Perfect Pixel was an electrifying photography event at NEXUS, where budding photographers unleashed their creativity! The challenge? Capture the fest\'s vibrant essence in a single frame. From the beautiful decorations to the lively crowds, participants showcased stunning photos that made everyone stop and stare. It wasn\'t just about the pictures—it was about connecting through a shared passion for photography. With every click, Perfect Pixel became more than just an event; it became a memorable experience that brought talent, creativity, and community together.',
        'images': [
          'assets2/pho1.jpg',
          'assets2/pho2.jpg',
          'assets2/pho3.jpg',


        ],
      },
      {
        'title': 'E-BOLT BGMI',
        'description':'The E-BOLT BGMI Tournament at Nexus\'23 Fest electrified the gaming scene with fierce competition in Battlegrounds Mobile India (BGMI). In the thrilling first round, registered teams clashed in a high stakes Erangel battle, where only the top 4 teams from each group advanced. Round 2 brought even greater intensity, as the remaining teams faced off in a single, nail-biting match, with victory going to the highest-scoring team. The tournament wasn\'t just about intense battles; it showcased extraordinary teamwork, strategy, and skill, drawing a captivated crowd of gaming enthusiasts and making it a standout moment of the fest.',

        'images': [
          'assets2/bgmi1.png',
          'assets2/bgmi2.jpeg',
          'assets2/bgmi3.jpg',

        ],
      },
      {
        'title': 'Pair up and break the ice ',
        'description':'SECE hosted an entertaining event designed for students to connect with new people, enhance their interpersonal skills, and create lasting memories. The event featured three engaging rounds: finding your pair, a questionnaire where the couple with the most matching answers won, and a lively paper dance finale. Apart from exciting prizes for the top three winners there was a special reward for first-year students.',
        'images': [
          'assets2/ice1.jpg',
          'assets2/ice2.jpg',
          'assets2/ice3.jpg',

        ],
      },
      {
        'title': 'Cultural Night',
        'description': 'The Cultural Night of Nexus took place on the concluding day and was the most awaited part of the grand fest. It brought together students and faculty and the evening was filled with diverse cultural activities and performances. The OAT was beautifully decorated. Students showcased their talent in fields of singing, dancing, acting, playing musical instruments and much more. The evening was wrapped up with a jukebox, which got all the students dancing merrily to the musical beats. The Cultural Night was more than just entertainment; it was a celebration of creativity and diversity for all the students.',
          'images': [
          'assets2/cul1.jpg',
            'assets2/ket.jpg',
            'assets2/lazy.JPG',
          'assets2/cul2.jpg',
            'assets2/cul3.jpg',
            'assets2/cul4.jpg',


          ],
      },


      // Add more events as needed
    ];
    final List<String> galleryImages = [

      'assets2/cul1.jpg',
      'assets2/ket.jpg',
      'assets2/lazy.JPG',
      'assets2/cul2.jpg',
      'assets2/cul3.jpg',
      'assets2/cul4.jpg',
      'assets2/cry1.jpg',
      'assets2/cry2.jpg',
      'assets2/cry3.jpg',


      'assets2/digimon1.jpg',
      'assets2/digimon2.jpg',
      'assets2/digimon3.jpg',
      'assets2/ket.jpg',
      'assets2/lazy.JPG',
      'assets2/mic.JPG',
      'assets2/Nexus1.png',


    ];
    final List<String> sponsorImages = [
      'assets2/brotherschap.png',
      'assets2/coding_ninja.png',
      'assets2/time.png',

    ];

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
                    SizedBox(width: 11),
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
                leading: Icon(Icons.corporate_fare, color: Colors.white),
                title: Text('Placement Masterclass', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pushNamed(context, '/Placement');
                },),
            ],
          ),
        ),
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight+2), // Height of the AppBar
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/nexusapp.png'), // Background image for AppBar
              fit: BoxFit.cover,
            ),
          ),
          child: AppBar(
          leading: Builder(
    builder: (BuildContext context) {
    return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );},),
            backgroundColor: Colors.transparent, // Make AppBar background transparent
            elevation: 0, // Remove shadow
            actions: [], // No actions in the AppBar
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  // Background image
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/about.png'), // Background image for the page
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Card(

                        elevation: 10, // Add shadow effect
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22), // Rounded corners for the card
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(22), // Rounded corners for the image
                          child: Container(
                            width: imageWidth,
                            height: imageHeight,
                            child: FittedBox(
                              fit: BoxFit.cover, // Ensure the image covers the area of the container
                              child: Image.asset('assets2/Nexus1.png'), // First image
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Events',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.itim(
                          textStyle: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.deepOrangeAccent,
                        thickness: 2.5,
                        indent: 100,
                        endIndent: 100,
                      ),
                      SizedBox(height: 20),

                      // Events section with Carousel Slider
                      Column(
                        children: events.map((event) {
                          int index = events.indexOf(event); // Get the index of the event

                          // Check if the current event's description is expanded
                          bool showFullText = isExpanded[index] ?? false;

                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Card(
                              elevation: 8,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15), // Match card's rounded corners
                                  image: DecorationImage(
                                    image: AssetImage('assets/back.png'), // Background image for the card
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        event['title'],
                                        style: GoogleFonts.kalam(
                                          textStyle: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87,
                                        ),),
                                      ),
                                      SizedBox(height: 10),
                                      // Event images (carousel slider)
                                      CarouselSlider(
                                        options: CarouselOptions(
                                          height: 150,
                                          autoPlay: false,
                                          enlargeCenterPage: true,
                                          enableInfiniteScroll: true,
                                          viewportFraction: 0.7, // Adjust this to show parts of adjacent images
                                        ),
                                        items: event['images'].map<Widget>((imagePath) {
                                          return ClipRRect(
                                            borderRadius: BorderRadius.circular(12),
                                            child: Image.asset(
                                              imagePath,
                                              fit: BoxFit.cover, // Adjust fit to ensure images cover the area well
                                              width: MediaQuery.of(context).size.width, // Make sure the image width matches the screen width
                                            ),
                                          );
                                        }).toList(),
                                      ),
                                      SizedBox(height: 10),

                                      // Event description with "Read more" toggle
                                      Text(
                                        showFullText
                                            ? event['description']
                                            : '${event['description'].substring(0, 150)}...', // Truncate after 100 characters
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black54,
                                          height: 1.5,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            // Toggle description visibility
                                            isExpanded[index] = !showFullText;
                                          });
                                        },
                                        child: Text(
                                          showFullText ? 'Read less' : 'Read more',
                                          style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),

                          );
                        }).toList(),
                      ),
                      SizedBox(height: 50),
                      Text(
                        'Gallery',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.itim(
                          textStyle: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.deepOrangeAccent,
                        thickness: 2.5,
                        indent: 100,
                        endIndent: 100,
                      ),
                      SizedBox(height: 20),

                      // Carousel Slider for Gallery Images
                      CarouselSlider(
                        options: CarouselOptions(
                          height: 200, // Height of the gallery slider
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 2), // Interval between image transitions (minimum 1 second for auto-play to work)
                          autoPlayAnimationDuration: Duration(milliseconds: 3000), // Smooth and slower transitions
                          autoPlayCurve: Curves.linear, // Linear movement for consistent speed
                          enableInfiniteScroll: true, // Loop through images infinitely
                          enlargeCenterPage: false, // All images will be the same size
                          scrollPhysics: BouncingScrollPhysics(), // Allows smooth bouncing scroll behavior
                          viewportFraction: 0.9, // Slight adjacent view for the next image
                        ),
                        items: galleryImages.map((imagePath) {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              imagePath,
                              fit: BoxFit.cover,
                              width: MediaQuery.of(context).size.width, // Ensures full image width
                            ),
                          );
                        }).toList(),
                      ),

                      SizedBox(height: 50),
                      Text(
                        'Sponsors',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.itim(
                          textStyle: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.deepOrangeAccent,
                        thickness: 2.5,
                        indent: 100,
                        endIndent: 100,
                      ),
                      SizedBox(height: 20),

                      // Carousel Slider for Sponsors (3 in a row)
                      CarouselSlider(
                        options: CarouselOptions(
                          height: 100, // Height of the sponsor images
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 2), // Adjust for slower or faster autoplay
                          enlargeCenterPage: false,
                          viewportFraction: 0.33, // Show 3 images at a time
                        ),
                        items: sponsorImages.map((imagePath) {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              imagePath,
                              fit: BoxFit.cover,
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ],
              ),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
