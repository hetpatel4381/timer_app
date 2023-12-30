import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timer_app/pages/splash_screen.dart';
import 'package:timer_app/provider/timer_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => TimerProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
