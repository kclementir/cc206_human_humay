import 'package:flutter/material.dart';

void main() {
 runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 @override
 Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login Form',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Login Form'),
    );
 }
}

class MyHomePage extends StatefulWidget {
 const MyHomePage({Key? key, required this.title}) : super(key: key);

 final String title;

 @override
 // ignore: library_private_types_in_public_api
 _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 final _formKey = GlobalKey<FormState>();

 @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                 hintText: 'Enter your email',
                ),
                validator: (value) {
                 if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                 }
                 return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                 hintText: 'Enter your password',
                ),
                validator: (value) {
                 if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                 }
                 return null;
                },
                obscureText: true,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                 onPressed: () {
                   
                 },
                 child: const Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
 }
}