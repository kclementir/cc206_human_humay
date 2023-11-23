import 'package:flutter/material.dart';
import 'package:cc206_human_humay/components/tabs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TabBarDemo(),
    );
  }
}
