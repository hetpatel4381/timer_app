import 'dart:math';

import 'package:flutter/material.dart';
import 'package:timer_app/screens/button_widget.dart';
import 'package:timer_app/screens/circular_timer.dart';
import 'package:timer_app/screens/current_second.dart';
import 'package:timer_app/screens/random_number.dart';
import 'package:timer_app/screens/success_failure.dart';

final GlobalKey<_CircularTimerWidgetState> circularTimerKey = GlobalKey<_CircularTimerWidgetState>();

class TimerScreen extends StatefulWidget {
  const TimerScreen({Key? key}) : super(key: key);

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  late int currentSecond;
  late int randomNo = 0;

  @override
  void initState() {
    super.initState();
    currentSecond = DateTime.now().second;
  }

  void updateCurrentSecond() {
    setState(() {
      currentSecond = DateTime.now().second;
    });
  }

  void updateRandomNumber() {
    setState(() {
      randomNo = Random().nextInt(60);
    });
  }

  void updateCircularTimer() {
    setState(() {
      circularTimerKey.currentState?.resetTimer();
    });
  }

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
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CurrentSecondWidget(
                  currentSecond: currentSecond,
                  onUpdate: updateCurrentSecond,
                ),
                RandomNumberWidget(
                  randomNumber: randomNo,
                  updateRandomNO: updateRandomNumber,
                ),
              ],
            ),
            const SizedBox(height: 50),
            SuccessFailureWidget(),
            const SizedBox(height: 50),
            CircularTimerWidget(
              key: circularTimerKey,
            ),
            const SizedBox(height: 50),
            ButtonWidget(
              onPressedFunction: [
                () => updateCurrentSecond(),
                () => updateRandomNumber(),
                () => updateCircularTimer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
