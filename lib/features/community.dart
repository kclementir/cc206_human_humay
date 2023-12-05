import 'package:cc206_human_humay/features/writepost.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Community());
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
                icon: const Icon(Icons.share, color: Colors.green),
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
                        child: const TextField(
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
                    const SizedBox(width: 10),
                    const Icon(Icons.notifications, color: Colors.white),
                    const SizedBox(width: 10),
                    const Icon(Icons.more_vert, color: Colors.white),
                  ],
                ),

                const SizedBox(height: 20),

                // Adding two Card widgets with image below
                _buildPostCard(
                  'Job Distor',
                  'Good Morning mga kababayan! Magtatanong lang sana ako kung anong klasing peste ito saming lupain?',
                  'assets/images/jub.jpg',
                ),

                const SizedBox(height: 16),

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
              MaterialPageRoute(builder: (context) => const writepost()),
            );
          },
          backgroundColor: Colors.green,
          child: const Icon(Icons.edit),
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
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    postText,
                    style: const TextStyle(
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
                  margin: const EdgeInsets.symmetric(horizontal: 16),
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
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: const Icon(Icons.thumb_up, color: Colors.green),
                  onPressed: () {
                    // Handle like button press
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.thumb_down, color: Colors.green),
                  onPressed: () {
                    // Handle unlike button press
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.comment, color: Colors.green),
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
