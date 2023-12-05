import 'package:cc206_human_humay/login_page.dart';
import 'package:flutter/material.dart';
import 'ManagePage.dart';

void main() {
  runApp(const User());
}

class User extends StatelessWidget {
  const User({super.key});

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
        ),
        body: Container(
          constraints: const BoxConstraints
              .expand(), // Ensure the container takes up the whole screen
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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // User Profile
                Card(
                  margin: const EdgeInsets.all(16.0),
                  child: ListTile(
                    leading: Image.asset(
                      'assets/images/farmer.png',
                      width: 70,
                      height: 70,
                    ),
                    title: const Text('User Profile'),
                    subtitle: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ManagePage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white, // set the background color
                        onPrimary: Colors.green, // set the text color
                        side: BorderSide(
                            color: Colors.green), // set the border color
                      ),
                      child: const Text('Manage Account'),
                    ),
                  ),
                ),

                // Feedback
                Card(
                  margin: const EdgeInsets.all(16.0),
                  child: ListTile(
                    leading: Image.asset(
                      'assets/images/likstars.png',
                      width: 70,
                      height: 70,
                    ),
                    title: Text("How's your experience with HUMÁNHUMAY?"),
                    subtitle: Text('Give Feedback'),
                  ),
                ),

                // Share
                Card(
                  margin: const EdgeInsets.all(16.0),
                  child: ListTile(
                    leading: Image.asset(
                      'assets/images/share.png',
                      width: 70,
                      height: 70,
                    ),
                    title: const Text("Let's grow rice crops together!"),
                    subtitle: const Text('Share'),
                  ),
                ),

                // Sign Out Button
                // Sign Out Button
                OutlinedButton(
                  onPressed: () {
                    // Add any additional sign-out logic here if needed
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                        color: Color.fromARGB(255, 255, 255, 255)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.exit_to_app,
                        color: Color.fromARGB(
                            255, 255, 255, 255), // Set icon color to red
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        'Sign Out',
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
