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
      // body: Container(
      //   constraints: const BoxConstraints.expand(),
      //   decoration: const BoxDecoration(
      //     image: DecorationImage(
      //       image: AssetImage('assets/images/bg2.png'),
      //       fit: BoxFit.fitWidth,
      //     ),
      //   ),
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
              // Weather
              Card(
                margin: EdgeInsets.all(16.0),
                child: ListTile(
                  title: Text('Weather'),
                  subtitle: Text('Current weather information'),
                ),
              ),

              // Crop Analysis
              Card(
                margin: EdgeInsets.all(16.0),
                child: ListTile(
                  title: Text('Crop Analysis'),
                  subtitle: Text('Crop analysis data'),
                ),
              ),

              // Analysis History
              Card(
                margin: EdgeInsets.all(16.0),
                child: ListTile(
                  title: Text('History of Analysis'),
                  subtitle: Text('Analysis history data'),
                ),
              ),

              Row(
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
