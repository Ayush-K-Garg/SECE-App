import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sece_2/footer.dart';
import 'package:table_calendar/table_calendar.dart';

class EventsPage extends StatefulWidget {
  @override
  _EventsPageState createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  final List<Map<String, dynamic>> eventCards = [
    {
      'title': 'Card Event 1',
      'description': 'Description for card event 1',
      'image': 'assets2/code2.jpg', // Replace with your asset path
    },
    {
      'title': 'Card Event 2',
      'description': 'Description for card event 2',
      'image': 'assets2/code3.jpg',
    },
    {
      'title': 'Card Event 3',
      'description': 'Description for card event 3',
      'image': 'assets2/code1.jpg',
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
      appBar: AppBar(
        title: Text('Events'),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'EVENTS',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  CarouselSlider.builder(
                    itemCount: eventCards.length,
                    itemBuilder: (context, index, realIndex) {
                      final event = eventCards[index];
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.8,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                          elevation: 8,
                          margin: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                event['image'] ?? 'assets/about.png',
                                height: MediaQuery.of(context).size.height * 0.4,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 10),
                              Text(
                                event['title'] ?? 'No Title',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12.0, vertical: 8.0),
                                child: Text(
                                  event['description'] ??
                                      'No description available',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    options: CarouselOptions(
                      height: MediaQuery.of(context).size.height * 0.6,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      viewportFraction: 0.75,
                      aspectRatio: 1.2,
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
                                color: Colors.green, // Set green background for event days
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

         // Footer moved outside of Expanded to ensure it stays at the bottom
        ],
      ),
    );
  }
}
