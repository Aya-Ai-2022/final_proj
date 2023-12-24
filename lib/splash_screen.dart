
import 'package:final_proj/auth_page.dart';
import 'package:flutter/material.dart';
import 'dart:async';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Wait for 2 seconds and then navigate to the sign-in page
    Timer(
      const Duration(seconds: 2),
      () {
        Navigator.pushReplacementNamed(context, AuthPage.id);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:  const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/image.jpg'), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: const Center(
          child: Text(
            'Splash Screen',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}


