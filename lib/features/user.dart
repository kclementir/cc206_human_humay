import 'package:flutter/material.dart';

void main() {
  runApp(const User());
}

class User extends StatelessWidget {
  const User({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        //Background Color
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
          child: const SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //User Profile
                Card(
                  margin: EdgeInsets.all(16.0),
                  child: ListTile(
                    title: Text('User Profile'),
                    subtitle: Text('Manage Account'),
                  ),
                ),

                //Feeback
                Card(
                  margin: EdgeInsets.all(16.0),
                  child: ListTile(
                    title: Text("How's your experience with HUMÁNHUMAY?"),
                    subtitle: Text('Give Feedback'),
                  ),
                ),

                // Share
                Card(
                  margin: EdgeInsets.all(16.0),
                  child: ListTile(
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
