// User.dart

import 'package:flutter/material.dart';
import 'manage_page.dart';

void main() {
  runApp(const User());
}

class User extends StatelessWidget {
  const User({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // remove debug banner
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
        // Background Color
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
                        // Navigate to ManagePage when the button is pressed
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ManagePage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.green,
                        backgroundColor: Colors.white, // set the text color
                        side: const BorderSide(
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
                    title: const Text("How's your experience with HUMÁNHUMAY?"),
                    subtitle: const Text('Give Feedback'),
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
              ], // Close the children list
            ), // Close the Column
          ), // Close the SingleChildScrollView
        ), // Close the Container
      ), // Close the Scaffold
    );
  }
}
