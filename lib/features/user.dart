// User.dart

import 'package:flutter/material.dart';
import 'ManagePage.dart';

void main() {
  runApp(User());
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
          constraints: const BoxConstraints.expand(), // Ensure the container takes up the whole screen
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
                  margin: EdgeInsets.all(16.0),
                  child: ListTile(
                    leading: Image.asset(
                      'assets/images/farmer.png',
                      width: 70,
                      height: 70,
                    ),
                    title: Text('User Profile'),
                    subtitle: ElevatedButton(
                      onPressed: () {
                        // Navigate to ManagePage when the button is pressed
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ManagePage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white, // set the background color
                        onPrimary: Colors.green, // set the text color
                        side: BorderSide(color: Colors.green), // set the border color
                      ),
                      child: Text('Manage Account'),
                    ),
                  ),
                ),

                // Feedback
                Card(
                  margin: EdgeInsets.all(16.0),
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
                  margin: EdgeInsets.all(16.0),
                  child: ListTile(
                    leading: Image.asset(
                      'assets/images/share.png',
                      width: 70,
                      height: 70,
                    ),
                    title: Text("Let's grow rice crops together!"),
                    subtitle: Text('Share'),
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
