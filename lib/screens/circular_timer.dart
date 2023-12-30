import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timer_app/provider/timer_provider.dart';

class CircularTimerWidget extends StatelessWidget {
  const CircularTimerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<TimerProvider>().internalController;

    if (controller == null) {
      final newController = CountDownController();
      context.read<TimerProvider>().setInternalController(newController);
      return const CircularProgressIndicator();
    }

    return CircularCountDownTimer(
      duration: 5,
      controller: controller,
      width: MediaQuery.of(context).size.width / 2,
      height: 200,
      ringColor: Colors.grey[300]!,
      fillColor: Colors.black45,
      backgroundColor: Colors.black,
      strokeWidth: 20.0,
      strokeCap: StrokeCap.round,
      textStyle: const TextStyle(
        fontSize: 33.0,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      textFormat: CountdownTextFormat.S,
      isReverse: true,
      isTimerTextShown: true,
      autoStart: false,
      timeFormatterFunction: ((defaultFormatterFunction, duration) {
        if (duration.inSeconds == 0) {
          return "Restart";
        } else {
          return Function.apply(defaultFormatterFunction, [duration]);
        }
      }),
    );
  }
}
