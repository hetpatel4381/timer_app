import 'dart:async';

import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

class CircularTimerWidget extends StatefulWidget {
  const CircularTimerWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<CircularTimerWidget> createState() => _CircularTimerWidgetState();
}

class _CircularTimerWidgetState extends State<CircularTimerWidget> {
  int duration = 5;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      _resetTimer();
    });
  }

  void _resetTimer() {
    setState(() {
      duration = 5;
    });
  }

  void _onButtonClick() {
    _timer.cancel();
    _startTimer();
    _resetTimer();
  }

  void resetTimer() {
    _resetTimer();
  }

  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CircularCountDownTimer(
      width: MediaQuery.of(context).size.width / 2,
      height: 200,
      duration: duration,
      fillColor: Colors.green,
      ringColor: Colors.red,
      isReverse: true,
      textStyle: const TextStyle(fontSize: 32),
    );
  }
}
