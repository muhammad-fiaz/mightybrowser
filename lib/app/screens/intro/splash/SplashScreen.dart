import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../pages/HomePage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    _controller.forward();
    startSplashTimer();
  }

  // Timer to navigate to the homepage after 3 seconds
  void startSplashTimer() {
    Future.delayed(const Duration(seconds: 3), () {
      checkConnectivity();
    });
  }

  Future<void> checkConnectivity() async {
    // Simulating delay for 3 seconds
    await Future.delayed(const Duration(seconds: 3));

    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        transitionDuration: Duration(milliseconds: 300),
        pageBuilder: (context, animation, secondaryAnimation) => FadeTransition(
          opacity: animation,
          child: const HomePage(),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.deepOrange,
              Colors.orange,
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FadeTransition(
                opacity: _controller,
                child: Image.asset(
                  'assets/images/logo_rounded.png', // Replace with your image path
                  width: 100,
                  height: 100,
                ),
              ),
              const SizedBox(height: 20),
              FadeTransition(
                opacity: _controller,
                child: TypewriterAnimatedTextKit(
                  speed: const Duration(milliseconds: 100),
                  isRepeatingAnimation: false,
                  textStyle: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                  text: ['Mighty Browser'],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
