import 'dart:math';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

class TimerProvider with ChangeNotifier {
  int _currentSecond = DateTime.now().second;
  int _randomNo = 0;
  bool _isSuccess = true;
  int _scoreOrAttempts = 0;
  
  CountDownController? _internalController;

  int get currentSecond => _currentSecond;
  int get randomNo => _randomNo;
  bool get isSuccess => _isSuccess;
  int get scoreOrAttempts => _scoreOrAttempts;
  CountDownController? get internalController => _internalController;

  void updateCurrentSecond() {
    _currentSecond = DateTime.now().second;
    notifyListeners();
  }

  void updateRandomNumber() {
    _randomNo = Random().nextInt(60);
    notifyListeners();
  }

  void checkSuccess() {
    if (_currentSecond == _randomNo) {
      _isSuccess = true;
      _scoreOrAttempts++;
    } else {
      _isSuccess = false;
      _scoreOrAttempts++;
    }
    notifyListeners();
  }

  void restartCircularTimer() {
    _internalController?.restart(duration: 5);
    notifyListeners();
  }

  void setInternalController(CountDownController controller) {
    _internalController = controller;
  }
}
