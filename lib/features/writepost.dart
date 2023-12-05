import 'package:cc206_human_humay/features/community.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(writepost());
}

class writepost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ask Community',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create a Post'),
        // Add a back button to the AppBar
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Replace the line below with your desired functionality
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Community()),
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // User Icon and Text Field for Post Content
            Row(
              children: [
                CircleAvatar(
                  // You can replace the placeholder image with the user's profile picture
                  backgroundImage: AssetImage('assets/images/rechiepol.jpg'),
                  radius: 20.0,
                ),
                SizedBox(width: 8.0),
                Expanded(
                  child: TextFormField(
                    maxLines: 5,
                    decoration: InputDecoration(
                      hintText: 'Ask Community',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),

            // Add Photo Button
            ElevatedButton.icon(
              onPressed: () {
                // Add functionality to pick a photo
              },
              icon: Icon(Icons.add_photo_alternate),
              label: Text('Add Photo/video'),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
            
              ),
            ),
            SizedBox(height: 16.0),

            // Post Button
            ElevatedButton(
              onPressed: () {
                // Add functionality to post
              },
              child: Text('Post'),
              style: ElevatedButton.styleFrom(

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                 padding: EdgeInsets.symmetric(horizontal: 7
                 , vertical: 10),
              
              ),
              ),
          ],
        ),
      ),
    );
  }
}

