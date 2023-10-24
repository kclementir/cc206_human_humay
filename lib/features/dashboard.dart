import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //Weather
          Card(
            margin: EdgeInsets.all(16.0),
            child: ListTile(
              title: Text('Weather'),
              subtitle: Text('Current weather information'),
            ),
          ),

          //Crop Analysis
          Card(
            margin: EdgeInsets.all(16.0),
            child: ListTile(
              title: Text('Crop Analysis'),
              subtitle: Text('Crop analysis data'),
            ),
          ),

          //Analysis History
          Card(
            margin: EdgeInsets.all(16.0),
            child: ListTile(
              title: Text('History of Analysis'),
              subtitle: Text('Analysis history data'),
            ),
          ),

          Row(
            children: [
              //Cultivation Tips
              Expanded(
                child: Card(
                  margin: EdgeInsets.all(16.0),
                  child: ListTile(
                    title: Text('Cultivation Tips'),
                    subtitle: Text('Helpful tips for cultivation'),
                  ),
                ),
              ),

              //Pests and Diseases
              Expanded(
                child: Card(
                  margin: EdgeInsets.all(16.0),
                  child: ListTile(
                    title: Text('Pests and Diseases Info'),
                    subtitle: Text('Information on common pests and diseases'),
                  ),
                ),
              ),

              //Crop Yield Detection
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
    ));
  }
}
