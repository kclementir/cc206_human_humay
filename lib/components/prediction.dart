import 'package:flutter/material.dart';

class PredictionScreen extends StatelessWidget {
  const PredictionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prediction'),
      ),
      body: const Center(
        child: Text('This is the Prediction Screen'),
      ),
    );
  }
}
