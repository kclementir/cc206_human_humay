import 'package:flutter/material.dart';

class PestsScreen extends StatelessWidget {
  const PestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pests'),
      ),
      body: const Center(
        child: Text('This is the Pests Screen'),
      ),
    );
  }
}
