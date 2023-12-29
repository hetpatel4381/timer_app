import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

class CircularTimerWidget extends StatefulWidget {
  final CircularTimerWidgetController controller;
  const CircularTimerWidget({Key? key, required this.controller})
      : super(key: key);

  @override
  State<CircularTimerWidget> createState() => _CircularTimerWidgetState();
}

class _CircularTimerWidgetState extends State<CircularTimerWidget> {
  final int _duration = 5;
  final CountDownController _controller = CountDownController();

  @override
  Widget build(BuildContext context) {
    widget.controller.setController(_controller);

    return CircularCountDownTimer(
      duration: _duration,
      controller: _controller,
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

class CircularTimerWidgetController {
  CountDownController? _internalController;

  void setController(CountDownController controller) {
    _internalController = controller;
  }

  void restart() {
    _internalController?.restart(duration: 5);
  }
}
