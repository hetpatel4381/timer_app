import 'package:flutter/material.dart';
import 'package:timer_app/widgets/app_container.dart';

class SuccessFailureWidget extends StatelessWidget {
  // const SuccessFailureWidget({super.key});

  bool isSuccess = true;
  int scoreOrAttempts = 5;

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      height: 150,
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      color: isSuccess ? Colors.green: Colors.yellow,
      title: isSuccess ? 'Success': 'Sorry try Again!', 
      subTitle: isSuccess ? 'Score: $scoreOrAttempts' : 'Attempts: $scoreOrAttempts',
      titleFont: 24,
      subTitleFont: 32,
      textColor: Colors.white,
      );
  }
}
