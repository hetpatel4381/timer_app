import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timer_app/provider/timer_provider.dart';
import 'package:timer_app/widgets/app_container.dart';

class CurrentSecondWidget extends StatelessWidget {
  const CurrentSecondWidget({
    super.key,
    required this.onUpdate,
  });

  final VoidCallback onUpdate;

  @override
  Widget build(BuildContext context) {
    final currentSecond = context.watch<TimerProvider>().currentSecond;
    return AppContainer(title: 'Current Second', subTitle: '$currentSecond');
  }
}
