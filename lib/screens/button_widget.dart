import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.onPressedFunction,
  });
  final List<VoidCallback>? onPressedFunction;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (onPressedFunction != null) {
          for (var onPressedFunction in onPressedFunction!) {
            onPressedFunction();
          }
        }
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
