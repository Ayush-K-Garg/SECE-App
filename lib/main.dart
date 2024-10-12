import 'package:flutter/material.dart';
import 'package:sece_2/alumni2.dart';
import 'package:sece_2/members2.dart';
import 'package:sece_2/members3.dart';
import 'package:sece_2/placement2.dart';
import 'Nexus.dart';
import 'members_page.dart';
import 'about_page.dart';
import 'events_page.dart';
import 'home_page.dart';
import 'alumni.dart';
import 'placement.dart';
void main() => runApp(SECEApp());

class SECEApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SECE App',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/about': (context) => AboutPage(),
        '/events': (context) => EventsPage(),
        '/alumni': (context) => AlumniPage(),
        '/Members':(context)=>MembersPage(),
        '/Nexus':(context)=>NexusPage(),
        '/Alumni':(context)=>AlumniPage(),
        '/Members2':(context)=>MembersPage2(),
        '/Members3':(context)=>MembersPage3(),
        '/Alumni2':(context)=>AlumniPage2(),
        '/Placement':(context)=>PlacementPage(),
        '/Placement2':(context)=>PlacementPage2(),


      },
    );
  }
}
