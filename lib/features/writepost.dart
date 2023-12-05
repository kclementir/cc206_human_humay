import 'package:flutter/material.dart';
import 'package:cc206_human_humay/features/community.dart';

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
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Community()),
            );
          },
        ),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/farmer.png'),
                    radius: 20.0,
                  ),
                  const SizedBox(width: 8.0),
                  Expanded(
                    child: TextFormField(
                      maxLines: 5,
                      style: const TextStyle(
                          color: Colors.white), // Set text color to white
                      decoration: const InputDecoration(
                        hintText: 'Ask Community',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.white), // Set border color to white
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .white), // Set focused border color to white
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              ElevatedButton.icon(
                onPressed: () {
                  // Add functionality to pick a photo
                },
                icon: const Icon(Icons.add_photo_alternate,
                    color: Color(0xFF367750)), // Set icon color
                label: const Text('Add Photo/video',
                    style:
                        TextStyle(color: Color(0xFF367750))), // Set text color
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Add functionality to post
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  backgroundColor: const Color(0xFF367750),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 7,
                      vertical: 10), // Set button background color
                ),
                child: const Text('Post',
                    style: TextStyle(color: Colors.white)), // Set text color
              ),
            ],
          ),
        ),
      ),
    );
  }
}
