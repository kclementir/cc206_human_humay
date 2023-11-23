import 'package:flutter/material.dart';

void main() {
  runApp(const Community());
}

class Community extends StatelessWidget {
  const Community({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GLOBE'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('100'),
              const SizedBox(height: 20),
              Image.asset('assets/image.png'),
              const SizedBox(height: 20),
              const Text('MC'),
              const SizedBox(height: 20),
              const Text('What is the best disease management for Tungro?'),
              const SizedBox(height: 20),
              const Text("What's wrong with my rice plant? Please help!"),
              const SizedBox(height: 20),
              const Text('Dremitte'),
              const SizedBox(height: 20),
              const Text('Write Post'),
            ],
          ),
        ),
      ),
    );
  }
}
