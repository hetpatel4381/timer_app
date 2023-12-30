import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timer_app/provider/timer_provider.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        final provider = context.read<TimerProvider>();
        provider.updateCurrentSecond();
        provider.updateRandomNumber();
        provider.restartCircularTimer();
        provider.checkSuccess();
      },
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(100, 50),
      ),
      child: const Text(
        'Click',
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
