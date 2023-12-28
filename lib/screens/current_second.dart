import 'package:flutter/material.dart';
import 'package:timer_app/widgets/app_container.dart';

class CurrentSecondWidget extends StatelessWidget {
  const CurrentSecondWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppContainer(title: 'Current Second', subTitle: '39');
  }
}