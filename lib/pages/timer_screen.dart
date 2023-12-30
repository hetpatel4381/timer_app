import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timer_app/provider/timer_provider.dart';
import 'package:timer_app/screens/button_widget.dart';
import 'package:timer_app/screens/circular_timer.dart';
import 'package:timer_app/screens/current_second.dart';
import 'package:timer_app/screens/random_number.dart';
import 'package:timer_app/screens/success_failure.dart';

class TimerScreen extends StatelessWidget {
  const TimerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TimerProvider(),
      child: Scaffold(
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
                    onUpdate: (){},
                  ),
                  RandomNumberWidget(
                    updateRandomNO: (){},
                  ),
                ],
              ),
              const SizedBox(height: 50),
              const SuccessFailureWidget(),
              const SizedBox(height: 50),
              const CircularTimerWidget(),
              const SizedBox(height: 50),
              const ButtonWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
