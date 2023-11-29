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
              // Weather title with padding at the top
              Container(
                padding: const EdgeInsets.only(top: 16.0),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.0), // Adjust left padding
                    child: Text(
                      'Weather',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),

              // Weather details card with adjusted margin
              const Card(
                margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: ListTile(
                  title: Text('Weather Janiuay, Western Visayas 25 May'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('29°C',
                          style: TextStyle(
                              fontSize: 48, fontWeight: FontWeight.bold)),
                      SizedBox(height: 10),
                      Text('Sunset 6:08 PM',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold)),
                      SizedBox(height: 10),
                      Text('It is cloudy today.',
                          style: TextStyle(fontSize: 24)),
                      SizedBox(height: 20),
                      Text('Today would be a bad day for:',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold)),
                      SizedBox(height: 10),
                      Text('APPLYING PESTICIDES',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.red)),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),

              // Crop Analysis
              const Card(
                margin: EdgeInsets.all(16.0),
                child: ListTile(
                  title: Text('Crop Analysis'),
                  subtitle: Text('Crop analysis data'),
                ),
              ),

              // Analysis History
              const Card(
                margin: EdgeInsets.all(16.0),
                child: ListTile(
                  title: Text('History of Analysis'),
                  subtitle: Text('Analysis history data'),
                ),
              ),

              const Row(
                children: [
                  // Cultivation Tips
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
