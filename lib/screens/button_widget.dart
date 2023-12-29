import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.onPressedFunction,
    required this.checkSuccess,
  });
  final List<VoidCallback>? onPressedFunction;
  final VoidCallback checkSuccess;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressedFunction?.forEach((function) {
          function();
        });
        checkSuccess();
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
