import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> questionBank = [
    Question('Responda com true', true),
    Question('Responda com false', false),
    Question('Responda com maybe', null),
  ];

  void nextQuestion() {
    if (_questionNumber < questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      print('Question: $_questionNumber ');
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
