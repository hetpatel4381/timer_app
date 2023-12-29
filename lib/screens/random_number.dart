import 'package:flutter/material.dart';
import 'package:timer_app/widgets/app_container.dart';

class RandomNumberWidget extends StatelessWidget {
  const RandomNumberWidget({
    super.key,
    required this.randomNumber,
    required this.updateRandomNO,
    });

  final int randomNumber;
  final VoidCallback updateRandomNO;

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      title: 'Random Number',
      subTitle: '$randomNumber',
      color: const Color.fromARGB(255, 166, 125, 173),
    );
  }
}
