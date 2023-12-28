class TimerModel {
  int seconds;
  int randomNo;
  int countDown;
  int score;
  int attempts;

  TimerModel({
    this.seconds = 0,
    this.randomNo = 0,
    this.countDown = 5,
    this.score = 0,
    this.attempts = 0,
  });

  factory TimerModel.fromMap(Map<String, dynamic> map) {
    return TimerModel(
      seconds: map['seconds'] ?? 0,
      randomNo: map['randomNo'] ?? 0,
      countDown: map['countDown'] ?? 0,
      score: map['score'] ?? 0,
      attempts: map['attempts'] ?? 0,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'seconds': seconds,
      'randomNo': randomNo,
      'countDown': countDown,
      'score': score,
      'attempts': attempts,
    };
  }
}
