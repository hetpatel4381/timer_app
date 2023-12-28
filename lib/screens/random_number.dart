import 'package:flutter/material.dart';
import 'package:timer_app/widgets/app_container.dart';

class RandomNumberWidget extends StatelessWidget {
  const RandomNumberWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppContainer(title: 'Random Number', subTitle: '60', color:const Color.fromARGB(255, 166, 125, 173),);
  }
}