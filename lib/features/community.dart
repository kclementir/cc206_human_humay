import 'package:cc206_human_humay/features/writepost.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Community());
}

class Community extends StatelessWidget {
  const Community({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'HUMÁNHUMAY',
            style: TextStyle(
              fontFamily: 'Brand',
              color: Color(0xFF367750),
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.white,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: Icon(Icons.share, color: Colors.green),
                onPressed: () {
                  // Add your share button logic here
                },
              ),
            ),
          ],
        ),
        body: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF367750),
                Color(0xFF8B8421),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search Community',
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search, color: Colors.grey),
                          ),
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.notifications, color: Colors.white),
                    SizedBox(width: 10),
                    Icon(Icons.more_vert, color: Colors.white),
                  ],
                ),

                SizedBox(height: 20),

                // Adding two Card widgets with image below
                _buildPostCard(
                  'Job Distor',
                  'Good Morning mga kababayan! Magtatanong lang sana ako kung anong klasing peste ito saming lupain?',
                  'assets/images/jub.jpg',
                ),

                SizedBox(height: 16),

                _buildPostCard(
                  'Keben Hokseng',
                  'Hello... Gus2 q lang itanong kung ano itong yellow sa mga pananim nmin..hehe tnx everyone..',
                  'assets/images/keben.png',
                ),

                // Your existing content goes here
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => writepost()),
              );
          },
          backgroundColor: Colors.green,
          child: Icon(Icons.edit),
        ),
      ),
    );
  }

  Widget _buildPostCard(String username, String postText, String imagePath) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: SizedBox(
        height: 500, // Adjust the height of the card as needed
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    username,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    postText,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Center(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  height: 250,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(Icons.thumb_up, color: Colors.green),
                  onPressed: () {
                    // Handle like button press
                  },
                ),
                IconButton(
                  icon: Icon(Icons.thumb_down, color: Colors.green),
                  onPressed: () {
                    // Handle unlike button press
                  },
                ),
                IconButton(
                  icon: Icon(Icons.comment, color: Colors.green),
                  onPressed: () {
                    // Handle comment button press
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
