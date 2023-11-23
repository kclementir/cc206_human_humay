import 'package:flutter/material.dart';

void main() {
  runApp(const Community());
}

class Community extends StatelessWidget {
  const Community({Key? key}) : super(key: key);

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
          child: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Community Posts'),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
