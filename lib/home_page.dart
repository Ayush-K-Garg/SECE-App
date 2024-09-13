import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SECE Official',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late AnimationController _animationController;
  late Animation<double> _opacityAnimation;

  final String _linkedinUrl = 'https://www.linkedin.com/company/sece-nitjsr';
  final String _youtubeUrl = 'https://www.youtube.com/@SECENITJamshedpur';
  final String _instagramUrl = 'https://www.instagram.com/secenitjsr/';

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 2), // Duration of the fade-in animation
      vsync: this,
    );

    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeIn,
      ),
    );

    _animationController.forward(); // Start the animation
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          backgroundColor: Color(0xFF0A0549),
          elevation: 0,
          title: Text(
            'SOCIETY OF ECE',
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.left,
          ),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: ClipOval(
                child: Image.asset(
                  'assets/logo.png',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              onPressed: () {
                _scaffoldKey.currentState?.openDrawer();
              },
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: Color(0xFF0A0549),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFF0A0549),
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
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.home, color: Colors.white),
                title: Text('Home', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
              ListTile(
                leading: Icon(Icons.info, color: Colors.white),
                title: Text('About', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pushNamed(context, '/about');
                },
              ),
              ListTile(
                leading: Icon(Icons.event, color: Colors.white),
                title: Text('Events', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pushNamed(context, '/events');
                },
              ),
              ListTile(
                leading: Icon(Icons.link, color: Colors.white),
                title: Text('Nexus', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pushNamed(context, '/Nexus');
                },
              ),
              ListTile(
                leading: Icon(Icons.group, color: Colors.white),
                title: Text('Team Members', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pushNamed(context, '/Members');
                },
              ),
              ListTile(
                leading: Icon(Icons.group, color: Colors.white),
                title: Text('Alumni', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pushNamed(context, '/Alumni');
                },
              ),

            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.78,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/blue4.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.menu, color: Colors.white),
                            onPressed: () {
                              _scaffoldKey.currentState?.openDrawer();
                            },
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                              child: Text(
                                'WELCOME TO SECE OFFICIAL',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  background: Paint()
                                    ..shader = LinearGradient(
                                      colors: <Color>[Colors.white, Colors.black12, Colors.grey],
                                    ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      Divider(
                        color: Colors.white,
                        thickness: 1.5,
                        indent: 20,
                        endIndent: 20,
                      ),
                      SizedBox(height: 20),
                      // Animated text with opacity animation
                      AnimatedBuilder(
                        animation: _animationController,
                        builder: (context, child) {
                          return Opacity(
                            opacity: _opacityAnimation.value,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text(
                                'SECE: Where Innovation meets excellence',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Color(0xFF0A0549),
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, left: 0.0, right: 0.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/about');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'About SECE',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.black,
                                  size: 18,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Follow us',
                        style: TextStyle(color: Colors.grey, fontSize: 9),
                        textAlign: TextAlign.center,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipOval(
                            child: IconButton(
                              icon: Image.asset(
                                'assets/linkedin1.png',
                                width: 20,
                                height: 20,
                              ),
                              onPressed: () => launch(_linkedinUrl),
                            ),
                          ),
                          SizedBox(width: 20),
                          ClipOval(
                            child: IconButton(
                              icon: Image.asset(
                                'assets/youtube1.png',
                                width: 40,
                                height: 40,
                              ),
                              onPressed: () => launch(_youtubeUrl),
                            ),
                          ),
                          SizedBox(width: 20),
                          ClipOval(
                            child: IconButton(
                              icon: Image.asset(
                                'assets/instagram1.png',
                                width: 40,
                                height: 40,
                              ),
                              onPressed: () => launch(_instagramUrl),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned.fill(
            child: IgnorePointer(
              child: CustomPaint(
                painter: GlitterPainter(animation: _animationController),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GlitterPainter extends CustomPainter {
  final List<Offset> _glitterOffsets;
  final double _glitterRadius;
  final Animation<double> animation;
  final Random _random = Random();

  GlitterPainter({required this.animation})
      : _glitterOffsets = List.generate(50, (_) => Offset.zero),
        _glitterRadius = 1.5, // Set a constant radius for all particles
        super(repaint: animation);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.fill;

    for (int i = 0; i < _glitterOffsets.length; i++) {
      if (_glitterOffsets[i] == Offset.zero) {
        _glitterOffsets[i] = Offset(
          _random.nextDouble() * size.width,
          _random.nextDouble() * size.height,
        );
      }

      final progress = animation.value;
      final alpha = ((sin(progress * pi) * 127 + 128).toInt()); // Slow twinkle
      paint.color = Colors.white.withAlpha(alpha);

      canvas.drawCircle(_glitterOffsets[i], _glitterRadius, paint); // Use constant radius
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
