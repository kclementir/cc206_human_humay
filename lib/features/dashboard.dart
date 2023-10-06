import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Weather
          Flexible(
            child: Card(
              margin: EdgeInsets.all(16.0),
              child: ListTile(
                title: Text('Weather'),
                subtitle: Text('Current weather information'),
              ),
            ),
          ),

          // Crop Analysis
          Flexible(
            child: Card(
              margin: EdgeInsets.all(16.0),
              child: ListTile(
                title: Text('Crop Analysis'),
                subtitle: Text('Crop analysis data'),
              ),
            ),
          ),

          // History of Analysis
          Flexible(
            child: Card(
              margin: EdgeInsets.all(16.0),
              child: ListTile(
                title: Text('History of Analysis'),
                subtitle: Text('Analysis history data'),
              ),
            ),
          ),

          // Cultivation Tips
          Flexible(
            child: Card(
              margin: EdgeInsets.all(16.0),
              child: ListTile(
                title: Text('Cultivation Tips'),
                subtitle: Text('Helpful tips for cultivation'),
              ),
            ),
          ),

          // Pests and Diseases Info
          Flexible(
            child: Card(
              margin: EdgeInsets.all(16.0),
              child: ListTile(
                title: Text('Pests and Diseases Info'),
                subtitle: Text('Information on common pests and diseases'),
              ),
            ),
          ),

          // Crop Yield Detection
          Flexible(
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
    );
  }
}
