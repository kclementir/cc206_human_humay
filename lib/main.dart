import 'package:flutter/material.dart';
import 'package:cc206_human_humay/components/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, //remove debug banner
      home: MySplash(), // Use MySplash as the initial screen
    );
  }
}
