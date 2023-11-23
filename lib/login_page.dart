import 'package:flutter/material.dart';
import 'package:cc206_human_humay/components/tabs.dart';
import 'package:cc206_human_humay/features/signup.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Background color
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF367750),
              Color(0xFF8B8421),
            ],
          ),
        ),

        //App Logo
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/applogo.png',
                  width: 200,
                  height: 200,
                ),
                const SizedBox(
                    height: 100), // space between img and Login widget
                const Login(title: 'Flutter Login'), // display login form
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Login extends StatelessWidget {
  const Login({Key? key, required this.title}) : super(key: key);

  final String title;

  void _toggleSignUp(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SignUpPage()),
    );
  }

  Widget _login(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Username',
            labelStyle: TextStyle(color: Colors.white),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            hintStyle: TextStyle(color: Colors.white),
          ),
          style: const TextStyle(color: Colors.white),
        ),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Password',
            labelStyle: TextStyle(color: Colors.white),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            hintStyle: TextStyle(color: Colors.white),
          ),
          obscureText: true,
          style: const TextStyle(color: Colors.white),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            // Handle login
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const TabBarDemo()),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF367750),
          ),
          child: const Text('Login', style: TextStyle(color: Colors.white)),
          // Set button text color
        ),
        const SizedBox(height: 10),
        TextButton(
          onPressed: () {
            // Toggle to sign up form
            _toggleSignUp(context);
          },
          child: RichText(
            text: const TextSpan(
              text: 'Don\'t have an account? ',
              style: TextStyle(
                color: Colors.white,
                // Set text color for the first part
              ),
              children: [
                TextSpan(
                  text: 'Sign up',
                  style: TextStyle(
                    color: Color(0xFFFFC926),
                    // Set text color for the word "Sign up"
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return _login(context);
  }
}
