import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_object_detection_app/screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image/ai.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Animated Splash Screen
          AnimatedSplashScreen(
            splashIconSize: 100.0,
            duration: 500,
            nextScreen: const HomeScreen(),
            splashTransition: SplashTransition.scaleTransition,
            curve: Curves.easeIn,
            backgroundColor: Colors.black12,
            splash: "assets/image/detection .png",
          ),

          const Positioned(
            right: 100,
            bottom: 30,
            child: Text(
              "Object Detection",
              style: TextStyle(
                  fontSize: 20,
                  decoration: TextDecoration.none,
                  color: Colors.white,
                  shadows: [BoxShadow(color: Colors.yellow, blurRadius: 7)]),
            ),
          ),
        ],
      ),
    );
  }
}
