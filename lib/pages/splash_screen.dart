import 'package:flutter/material.dart';
import 'package:timer_app/pages/timer_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const TimerScreen()),
      );
    });

    return const Scaffold(
      body: Center(
        child: FlutterLogo(size: 200),
      ),
    );
  }
}
