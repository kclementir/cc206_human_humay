import 'package:flutter/material.dart';
import 'package:cc206_human_humay/features/community.dart';

void main() {
  runApp(const WritePost());
}

class WritePost extends StatelessWidget {
  const WritePost({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ask Community',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create a Post'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // User Icon and Text Field for Post Content
            Row(
              children: [
                const CircleAvatar(
                  // You can replace the placeholder image with the user's profile picture
                  backgroundImage: AssetImage('assets/images/rechiepol.jpeg'),
                  radius: 20.0,
                ),
                const SizedBox(width: 8.0),
                Expanded(
                  child: TextFormField(
                    maxLines: 5,
                    decoration: const InputDecoration(
                      hintText: 'What\'s on your mind?',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),

            // Add Photo Button
            ElevatedButton.icon(
              onPressed: () {
                // Add functionality to pick a photo
              },
              icon: const Icon(Icons.add_photo_alternate),
              label: const Text('Add Photo'),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            const SizedBox(height: 16.0),

            // Post Button
            ElevatedButton(
              onPressed: () {
                // Add functionality to post
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Text('Post'),
            ),
          ],
        ),
      ),
    );
  }
}
