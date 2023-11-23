import 'package:flutter/material.dart';

void main() {
  runApp(const User());
}

class User extends StatelessWidget {
  const User({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HUMÁNHUMAY',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('HUMÁNHUMAY'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.png'),
              const Text('Palaydin'),
              const Text('How\'s your experience with HUMÁNHUMAY?'),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Let\'s grow rice crops together!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
