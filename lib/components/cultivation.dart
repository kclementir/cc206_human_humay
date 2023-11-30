import 'package:flutter/material.dart';

class CultivationScreen extends StatelessWidget {
  const CultivationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cultivation Tips'),
      ),
      body: const Center(
        child: Text('This is the Cultivation Screen'),
      ),
    );
  }
}
