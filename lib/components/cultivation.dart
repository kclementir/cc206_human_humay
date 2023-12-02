import 'package:flutter/material.dart';

class CultivationScreen extends StatelessWidget {
  const CultivationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> yourImageList = [
      'assets/images/cultivation/10.png',
      'assets/images/cultivation/11.png',
      'assets/images/cultivation/12.png',
      'assets/images/cultivation/13.png',
      'assets/images/cultivation/14.png',
      'assets/images/cultivation/15.png',
      'assets/images/cultivation/16.png',
      'assets/images/cultivation/17.png',
      'assets/images/cultivation/18.png',
      'assets/images/cultivation/19.png',
      'assets/images/cultivation/20.png',
      'assets/images/cultivation/21.png',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cultivation Tips',
          style: TextStyle(
            fontFamily: 'Brand',
            color: Color(0xFF367750),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Color(
              0xFF367750), // Change this color to the desired color for the arrow
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
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 items in each row
          ),
          itemCount: yourImageList.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.white, // Set the background color to white
                borderRadius:
                    BorderRadius.circular(8.0), // Set the border radius
              ),
              child: Center(
                child: Image.asset(yourImageList[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}
