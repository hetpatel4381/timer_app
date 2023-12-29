import 'package:flutter/material.dart';
import 'package:timer_app/widgets/app_container.dart';

class SuccessFailureWidget extends StatelessWidget {
  const SuccessFailureWidget({
    super.key,
    required this.isSuccess,
    required this.scoreOrAttempts,
    });

  final bool isSuccess;
  final int scoreOrAttempts;

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      height: 150,
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      color: isSuccess ? Colors.green : Colors.orange,
      title: isSuccess ? 'Success' : 'Sorry try Again!',
      subTitle:
          isSuccess ? 'Score: $scoreOrAttempts' : 'Attempts: $scoreOrAttempts',
      titleFont: 24,
      subTitleFont: 32,
      textColor: Colors.white,
    );
  }
}
