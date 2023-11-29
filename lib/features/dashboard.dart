import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                          // Add functionality for the Analyze button
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

              // Analysis History
              Container(
                margin: const EdgeInsets.all(16.0),
                child: const Card(
                  child: ListTile(
                    title: Text('History of Analysis'),
                    subtitle: Text('Analysis history data'),
                  ),
                ),
              ),

              // Cultivation Tips
              const Row(
                children: [
                  Expanded(
                    child: Card(
                      margin: EdgeInsets.all(16.0),
                      child: ListTile(
                        title: Text('Cultivation Tips'),
                        subtitle: Text('Helpful tips for cultivation'),
                      ),
                    ),
                  ),

                  // Pests and Diseases
                  Expanded(
                    child: Card(
                      margin: EdgeInsets.all(16.0),
                      child: ListTile(
                        title: Text('Pests and Diseases Info'),
                        subtitle:
                            Text('Information on common pests and diseases'),
                      ),
                    ),
                  ),

                  // Crop Yield Detection
                  Expanded(
                    child: Card(
                      margin: EdgeInsets.all(16.0),
                      child: ListTile(
                        title: Text('Crop Yield Detection'),
                        subtitle: Text('Crop yield data and analysis'),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
