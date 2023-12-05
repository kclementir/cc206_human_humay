import 'package:flutter/material.dart';

void main() {
  runApp(writepost());
}

class writepost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook Post',
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
                  backgroundImage: AssetImage('assets/images/rechiepol.jpeg'),
                  radius: 20.0,
                ),
                SizedBox(width: 8.0),
                Expanded(
                  child: TextFormField(
                    maxLines: 5,
                    decoration: InputDecoration(
                      hintText: 'What\'s on your mind?',
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
              label: Text('Add Photo'),
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
              ),   
            ),
          ],
        ),
      ),
    );
  }
}
