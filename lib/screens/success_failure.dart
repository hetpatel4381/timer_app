import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timer_app/provider/timer_provider.dart';
import 'package:timer_app/widgets/app_container.dart';

class SuccessFailureWidget extends StatelessWidget {
  const SuccessFailureWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isSuccess = context.watch<TimerProvider>().isSuccess;
    final scoreOrAttempts = context.watch<TimerProvider>().scoreOrAttempts;
    
    return AppContainer(
      height: 150,
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      color: isSuccess ? Colors.green : Colors.orange,
      title: isSuccess ? 'Success' : 'Sorry try Again!',
      subTitle:
          isSuccess ? 'Score: $scoreOrAttempts' : 'Attempts: $scoreOrAttempts',
      titleFont: 24,
      subTitleFont: 28,
      textColor: Colors.white,
    );
  }
}
