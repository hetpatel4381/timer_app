import 'package:flutter/material.dart';
import 'package:timer_app/widgets/button_widget.dart';
import 'package:timer_app/widgets/circular_timer.dart';
import 'package:timer_app/widgets/current_second.dart';
import 'package:timer_app/widgets/random_number.dart';
import 'package:timer_app/widgets/success_failure.dart';

class TimerScreen extends StatelessWidget {
  const TimerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Timer App'),
        centerTitle: true,
      ),
      body: const Column(
        children: [
          CurrentSecondWidget(),
          RandomNumberWidget(),
          SuccessFailureWidget(),
          CircularTimerWidget(),
          ButtonWidget(),
        ],
      ),
    );
  }
}