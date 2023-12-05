import 'package:flutter/material.dart';
import 'package:cc206_human_humay/features/writepost.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Community(),
  ));
}

class Community extends StatelessWidget {
  const Community({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TabBarDemo(),
    );
  }
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              icon: const Icon(Icons.share, color: Color(0xFF367750)),
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

              // Adding three Card widgets with different images below
              _buildPostCard(
                'Job Distor',
                'Good Morning mga kababayan! Magtatanong lang sana ako kung anong klasing peste ito saming lupain?',
                'assets/images/jub.jpg',
                'assets/images/usercom1.png',
              ),

              const SizedBox(height: 16),

              _buildPostCard(
                'Keben Hokseng',
                'Hello... Gus2 q lang itanong kung ano itong yellow sa mga pananim nmin..hehe tnx everyone..',
                'assets/images/keben.png',
                'assets/images/usercom.png',
              ),
              const SizedBox(height: 16),

              _buildPostCard(
                'Rechi Poll',
                'Hello pu... Bak8 naging gan2 ang palayan ng lolo q? curious lg pu.',
                'assets/images/rice.jpg',
                'assets/images/rechiepol.jpg',
              ),
              const SizedBox(height: 16),
              // Your existing content goes here
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const WritePost()),
          );
        },
        backgroundColor: const Color(0xFF367750),
        child:
            const Icon(Icons.edit, color: Color.fromARGB(255, 255, 255, 255)),
      ),
    );
  }

  Widget _buildPostCard(
      String username, String postText, String imagePath, String avatarImage) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: SizedBox(
        height: 500,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Image
            Expanded(
              child: Center(
                child: Container(
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
            // Context
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // User profile icon and Context
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // User profile icon with image
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(avatarImage),
                      ),
                      const SizedBox(width: 8),
                      // Username and Date posted
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Username
                          Text(
                            username,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          // Date posted
                          Text(
                            'Date Posted: ${DateTime.now().toString().split(' ')[0]}',
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  // Post text
                  Text(
                    postText,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ],
              ),
            ),

            // Like
            const SizedBox(height: 8),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: const Icon(Icons.thumb_up, color: Color(0xFF367750)),
                    onPressed: () {
                      // Handle like button press
                    },
                  ),
                  IconButton(
                    icon:
                        const Icon(Icons.thumb_down, color: Color(0xFF367750)),
                    onPressed: () {
                      // Handle unlike button press
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.comment, color: Color(0xFF367750)),
                    onPressed: () {
                      // Handle comment button press
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
