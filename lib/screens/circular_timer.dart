import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

class CircularTimerWidget extends StatefulWidget {
  const CircularTimerWidget({super.key});

  @override
  State<CircularTimerWidget> createState() => _CircularTimerWidgetState();
}

class _CircularTimerWidgetState extends State<CircularTimerWidget> {
  int duration = 5;

  @override
  Widget build(BuildContext context) {
    return CircularCountDownTimer(
      width: MediaQuery.of(context).size.width / 2,
      height: 200,
      duration: duration,
      fillColor: Colors.green,
      ringColor: Colors.red,
      isReverse: true,
      textStyle: TextStyle(fontSize: 32),
      // autoStart: true,
      onComplete: () {

      },
    );
  }
}
