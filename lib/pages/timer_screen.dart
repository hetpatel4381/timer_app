import 'package:flutter/material.dart';
import 'package:timer_app/screens/button_widget.dart';
import 'package:timer_app/screens/circular_timer.dart';
import 'package:timer_app/screens/current_second.dart';
import 'package:timer_app/screens/random_number.dart';
import 'package:timer_app/screens/success_failure.dart';

class TimerScreen extends StatelessWidget {
  const TimerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Timer App'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CurrentSecondWidget(),
                RandomNumberWidget(),
              ],
            ),
            SizedBox(height: 50),
            SuccessFailureWidget(),
            SizedBox(height: 50),
            CircularTimerWidget(),
            SizedBox(height: 50),
            ButtonWidget(),
          ],
        ),
      ),
    );
  }
}