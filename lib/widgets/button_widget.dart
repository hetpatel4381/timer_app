import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){}, 
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(100, 50),
      ),
      child: const Text('Click', style: TextStyle(fontSize: 18),),
      );
  }
}