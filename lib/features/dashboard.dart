import 'package:cc206_human_humay/components/analyze_screen.dart';
import 'package:flutter/material.dart';
import 'package:cc206_human_humay/components/cultivation.dart';
import 'package:cc206_human_humay/components/pests.dart';
import 'package:cc206_human_humay/components/prediction.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> yourImageList = [
      'assets/images/leaf1.jpg',
      'assets/images/leaf2.jpg',
      'assets/images/leaf3.jpg',
      'assets/images/leaf4.jpg',
      'assets/images/leaf5.jpg',
    ];

    return Scaffold(
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Weather title
              Container(
                padding: const EdgeInsets.only(top: 8.0),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Text(
                      'Weather',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),

              // Weather details card
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 4.0,
                ),
                child: const Card(
                  child: ListTile(
                    title: Text(
                      'Janiuay, Western Visayas 25 May',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF367750),
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '29°C',
                          style: TextStyle(
                            fontSize: 75,
                            color: Color(0xFF367750),
                          ),
                        ),
                        Text(
                          'Sunset 6:08 PM',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF367750),
                          ),
                        ),
                        Divider(
                          color: Color(0xFF367750),
                          thickness: 1,
                          height: 20,
                        ),
                        Text(
                          'It is cloudy today.',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF367750),
                          ),
                        ),
                        SizedBox(height: 3),
                        Row(
                          children: [
                            Text(
                              'Today would be a bad day for: ',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF367750),
                              ),
                            ),
                            Text(
                              'APPLYING PESTICIDES',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF367750),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Analyze your crop title
              Container(
                margin: const EdgeInsets.only(
                  left: 16.0,
                  top: 8.0,
                  right: 16.0,
                  bottom: 0,
                ),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Analyze your crop',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              // Analyze crop card details
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 4.0,
                ),
                child: Card(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/cropAnalysis.png',
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 8.0),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AnalyzeScreen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: const Color(0xFF367750),
                        ),
                        child: const Text('Analyze'),
                      ),
                      const SizedBox(height: 8.0), //padding below button
                    ],
                  ),
                ),
              ),

              // History of Analysis Title
              Container(
                margin: const EdgeInsets.only(
                  left: 16.0,
                  top: 8.0,
                  right: 16.0,
                  bottom: 0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'History of Analysis',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // Add your View All button action here
                      },
                      child: const Text(
                        'View All',
                        style: TextStyle(
                          fontSize: 8,
                          color: Colors.white, // Adjust the color as needed
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Analysis History images in a row
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 4.0,
                ),
                height: 100, // Set the height of the image row
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: yourImageList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        // Add functionality to open the image when clicked
                        // You can use Navigator or any other method to navigate to the full image view
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 8.0),
                        width: 100, // Set the width of each image
                        height: 100, // Set the height of each image
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(yourImageList[index]),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    );
                  },
                ),
              ),

              // Cultivation Tips, Pests and Diseases, Crop Yield Detection

              //Cultivation
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageContainer('assets/images/cultivation.png'),
                  ImageContainer('assets/images/pests.png'),
                  ImageContainer('assets/images/prediction.png'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ImageContainer extends StatelessWidget {
  final String imagePath;

  const ImageContainer(this.imagePath, {super.key});

  void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (imagePath == 'assets/images/cultivation.png') {
          navigateToScreen(context, const CultivationScreen());
        } else if (imagePath == 'assets/images/pests.png') {
          navigateToScreen(context, const PestsScreen());
        } else if (imagePath == 'assets/images/prediction.png') {
          navigateToScreen(context, const PredictionScreen());
        }
      },
      child: Card(
        margin: const EdgeInsets.all(16.0),
        child: SizedBox(
          width: 100,
          height: 100,
          child: InkWell(
            onTap: () {
              if (imagePath == 'assets/images/cultivation.png') {
                navigateToScreen(context, const CultivationScreen());
              } else if (imagePath == 'assets/images/pests.png') {
                navigateToScreen(context, const PestsScreen());
              } else if (imagePath == 'assets/images/prediction.png') {
                navigateToScreen(context, const PredictionScreen());
              }
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
