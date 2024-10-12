import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photo_view/photo_view.dart';
import 'package:sece_2/footer.dart';

class PlacementPage2 extends StatelessWidget {
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
              _buildDrawerItem(Icons.home, 'Home', context, '/'),
              _buildDrawerItem(Icons.info, 'About', context, '/about'),
              _buildDrawerItem(Icons.event, 'Events', context, '/events'),
              _buildDrawerItem(Icons.link, 'Nexus', context, '/Nexus'),
              _buildDrawerItem(Icons.group, 'Team Members', context, '/Members'),
              _buildDrawerItem(Icons.group, 'Alumni', context, '/Alumni'),
              _buildDrawerItem(Icons.corporate_fare, 'Placement Masterclass', context, '/Placement'),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '  PLACEMENT\nMASTERCLASS',
          style: GoogleFonts.itim(
            fontSize: 26,
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
            );
          },
        ),
        elevation: 0,
      ),


      body: SingleChildScrollView(


        child: Container(

          child: Column(

            children: [
              SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.only(left: 8.0,right:8 ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/Placement2');
                      },
                      icon: Icon(Icons.group,
                          color: ModalRoute.of(context)?.settings.name == '/Placement2'
                              ? Colors.white // Highlight the icon when on this page
                              : Color(0xFF313B49)),
                      label: Text(
                        "2019-2023",
                        style: TextStyle(
                            fontSize: 18,
                            color: ModalRoute.of(context)?.settings.name == '/Placement2'
                                ? Colors.white // Highlight the text when on this page
                                : Color(0xFF313B49)),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                        backgroundColor: ModalRoute.of(context)?.settings.name == '/Placement2'
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
                        Navigator.pushNamed(context, '/Placement');
                      },
                      icon: Icon(Icons.group,
                          color: ModalRoute.of(context)?.settings.name == '/Placement'
                              ? Colors.white // Highlight the icon when on this page
                              : Color(0xFF313B49)),
                      label: Text(
                        "2020-2024",
                        style: TextStyle(
                            fontSize: 18,
                            color: ModalRoute.of(context)?.settings.name == '/Placement'
                                ? Colors.white // Highlight the text when on this page
                                : Color(0xFF313B49)),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                        backgroundColor: ModalRoute.of(context)?.settings.name == '/Placement'
                            ? Color(0xFF313B49) // Highlight the button background
                            : Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8), // Rounded corners
                        ),
                      ),
                    ),
                  ],
                ),


              ),
              SizedBox(height: 20,),
              Divider(
                color: Colors.grey,
                indent: 40,
                endIndent: 40,
                thickness: 2,
              ),
              _buildProfileCard(
                name: 'Raman Kumar',
                imageUrl: 'https://drive.google.com/uc?export=view&id=1t524Rhei1NuDjLnga7F8HtO9vJMIdJuP',
                image: 'https://drive.google.com/uc?export=view&id=1Pk06ApdruTgvOpq80o4SyvyueYVYXs-o',
                companyLogo: 'https://drive.google.com/uc?export=view&id=1hDg7ytsoZ_eIlK5U64lViYgKfqW4dYaH',
                context: context,
              ),
              _buildProfileCard(
                name: 'Shashank Shekhar',
                imageUrl: 'https://drive.google.com/uc?export=view&id=1Z95N5pTtuhWpLPhIp454zsyUvwJRVe1M',
                image: 'https://drive.google.com/uc?export=view&id=1YB1zUkBIyFmDRi4GQ_mOx3XAg0U_qF3h',
                companyLogo: 'https://drive.google.com/uc?export=view&id=1PqV_4zU4oQaDH_WEkDkTjlpeUEqS9h9H',
                context: context,
              ),
              _buildProfileCard(
                name: 'Ritika Kumari',
                imageUrl: 'https://drive.google.com/uc?export=view&id=19xXrcp7Fqv2tM0RXxE495FM0QyKzqJp_',
                image: 'https://drive.google.com/uc?export=view&id=1tvWK51ZTaOugttf1o-wvFSErOo71pEve',
                companyLogo: 'https://drive.google.com/uc?export=view&id=1bUFq605rDf-m7n2v8K2wPsaNO2sP0Fw-',
                context: context,
              ),
              _buildProfileCard(
                name: 'Ayush Kumar Chaudhary',
                imageUrl: 'https://drive.google.com/uc?export=view&id=1LAGiY6XTLTn-Rpnu6_zwRxxVY9JIIqWH',
                image: 'https://drive.google.com/uc?export=view&id=1nLwZwI8Bo0c30-CtzMzLAG29Wogxt9S4',
                companyLogo: 'https://drive.google.com/uc?export=view&id=1mD5Cn_6hB0H4dzdt5mJKdQARW9zz-Fo2',
                context: context,
              ),
              _buildProfileCard(
                name: 'Aditya Raj Srivastava',
                imageUrl: 'https://drive.google.com/uc?export=view&id=1m5GgvG4gjZxbbEoGGatR6f5LeOXuQqoY',
                image: 'https://drive.google.com/uc?export=view&id=1Y5SJfzxAIUSgxQ2pFnL-ocfD7OwjMXpB',
                companyLogo: 'https://drive.google.com/uc?export=view&id=1IM17VYdfAn_U6OX8bRQb5dP8ULpe1TfL',
                context: context,
              ),
              _buildProfileCard(
                name: 'Priya Singh',
                imageUrl: 'https://drive.google.com/uc?export=view&id=1l6aB8JRM106jD3cNlW_l7mNWLOPSDVzm',
                image: 'https://drive.google.com/uc?export=view&id=1EmGtkZhSSmYIHgzV6a_JoG6LwDakNzy4',
                companyLogo: 'https://drive.google.com/uc?export=view&id=1ZPHpXhtDz2ny4kDCKgNVPDWoPuky4Kpe',
                context: context,
              ),
              _buildProfileCard(
                name: 'Naved Sohail',
                imageUrl: 'https://drive.google.com/uc?export=view&id=1NpxnllXgTqM7oK6DLlG5YyHSZJYBVqVW',
                image: 'https://drive.google.com/uc?export=view&id=1HFDIBeyzRvRY1oNOIdW-PYzOCct4Ewij',
                companyLogo: 'https://drive.google.com/uc?export=view&id=1IM17VYdfAn_U6OX8bRQb5dP8ULpe1TfL',
                context: context,
              ),
              _buildProfileCard(
                name: 'Arpit Raj',
                imageUrl: 'https://drive.google.com/uc?export=view&id=1oYTxtmBUcGOddKs9c8IlRtnuxO4m1tcO',
                image: 'https://drive.google.com/uc?export=view&id=1I_FUVIzkQ6Rm-TDHuCjiOHOAbFq1F7WX',
                companyLogo: 'https://drive.google.com/uc?export=view&id=14jtRon4ZostgPXqhs9ZsU5V4ch0zxdLV',
                context: context,
              ),
              _buildProfileCard(
                name: 'Yash Barnwal',
                imageUrl: 'https://drive.google.com/uc?export=view&id=1wzjsL2GtOUb4IrRPIQDIeoM7Yiw6pySd',
                image: 'https://drive.google.com/uc?export=view&id=1AkXgTpBeXa-yyU0Migfuatq4FIMlvcSf',
                companyLogo: 'https://drive.google.com/uc?export=view&id=1-AY36f5v7kRMS3fdewxCGJFS6uNJT9w0',
                context: context,
              ),
              _buildProfileCard(
                name: 'Mohit Mayank',
                imageUrl: 'https://drive.google.com/uc?export=view&id=1_kS-4M6_utrPRp7-SZs3JatG0GY-oMQx',
                image: 'https://drive.google.com/uc?export=view&id=18fmkGDzUn7b37RYSwyAIwwdFoR0MxU04',
                companyLogo: 'https://drive.google.com/uc?export=view&id=1PqV_4zU4oQaDH_WEkDkTjlpeUEqS9h9H',
                context: context,
              ),
              // Add more profiles as needed

              // Add the footer at the end
              Footer(),
            ],
          ),
        ),
      ),
    );
  }


  // Drawer Item Builder
  ListTile _buildDrawerItem(IconData icon, String title, BuildContext context, String route) {
    return ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(title, style: TextStyle(color: Colors.black)),
      onTap: () {
        Navigator.pushNamed(context, route);
      },
    );
  }

  // Profile Card Widget
  Widget _buildProfileCard({
    required String name,
    required String imageUrl,
    required String image,
    required String companyLogo,
    required BuildContext context,
  }) {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(4), // Border width
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.pink],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            // Profile Image (Avatar) using network image
            Container(
              margin: EdgeInsets.all(8),
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.transparent,
                backgroundImage: NetworkImage(imageUrl),
                onBackgroundImageError: (exception, stackTrace) {
                  // Optionally handle image loading error
                },
              ),
            ),
            // Name and 'Know More' Button
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return LinearGradient(
                        colors: [Colors.blue, Colors.pink],
                      ).createShader(bounds);
                    },
                    child: ElevatedButton(
                      onPressed: () {
                        // Show image in a pop-up with zoom and pan
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Dialog(
                              child: Container(
                                height: 400,
                                width: 300,
                                child: PhotoView(
                                  imageProvider: NetworkImage(image),
                                  backgroundDecoration: BoxDecoration(
                                    color: Colors.black,
                                  ),
                                  minScale: PhotoViewComputedScale.contained,
                                  maxScale: PhotoViewComputedScale.covered * 2.0,
                                  loadingBuilder: (context, event) => Center(
                                    child: CircularProgressIndicator(),
                                  ),
                                  errorBuilder: (context, error, stackTrace) => Center(
                                    child: Icon(
                                      Icons.person, // Error icon for missing image
                                      size: 100,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        backgroundColor: Colors.transparent,
                        elevation: 0, // Remove elevation
                      ),
                      child: Text('Know More', style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ),
            // Company Logo with network image and fallback
            GestureDetector(
              onTap: () {
                // When image is clicked, show it in a dialog
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Dialog(
                      backgroundColor: Colors.transparent, // Transparent background
                      child: ClipOval(
                        child: Image.network(
                          companyLogo,
                          fit: BoxFit.contain,  // Show image in full without distortion
                          errorBuilder: (context, error, stackTrace) => Container(
                            width: 50,
                            height: 50,
                            child: Icon(
                              Icons.business,  // Error icon for missing company logo
                              size: 50,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              child: Container(
                margin: EdgeInsets.all(8),
                child: ClipOval(
                  child: SizedBox(
                    width: 50,  // Adjust as necessary
                    height: 50,  // Adjust as necessary
                    child: Image.network(
                      companyLogo,
                      fit: BoxFit.contain,  // Prevents image cutting, maintains aspect ratio
                      errorBuilder: (context, error, stackTrace) => Container(
                        width: 50,
                        height: 50,
                        child: Icon(
                          Icons.business,  // Fallback icon for missing logo
                          size: 50,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }



}