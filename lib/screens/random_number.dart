import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timer_app/provider/timer_provider.dart';
import 'package:timer_app/widgets/app_container.dart';

class RandomNumberWidget extends StatelessWidget {
  const RandomNumberWidget({
    super.key,
    required this.updateRandomNO,
  });

  final VoidCallback updateRandomNO;

  @override
  Widget build(BuildContext context) {
    final randomNumber = context.watch<TimerProvider>().randomNo;
    return AppContainer(
      title: 'Random Number',
      subTitle: '$randomNumber',
      color: const Color.fromARGB(255, 166, 125, 173),
    );
  }
}
