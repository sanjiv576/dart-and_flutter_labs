import 'question.dart';

class Quiz {
  List<Question>? _questionBank;

  int _questionNumber = 0;

  int _score = 0;

  Quiz() {
    _questionBank = [
      Question(
          question: 'What is the height of the Mount Everest ?',
          options: {'8848m', '8000m', '8857m'},
          answer: '8848m'),
      Question(
          question: 'Where Buddha was born ?',
          options: {'India', 'Sri-Lanka', 'Nepal'},
          answer: 'Nepal'),
      Question(
          question: 'Who is the father of Computer ?',
          options: {'Albert Einstein', 'Charles Babbage', 'Sir Isac Newton'},
          answer: 'Charles Babbage'),
      Question(
          question: 'When is World\'s Environment Day ?',
          options: {'April 5', 'May 5', 'June 5'},
          answer: 'June 5'),
      Question(
          question: 'What is the addition of 23 + 40 ?',
          options: {'68', '63', '75'},
          answer: '63'),
    ];
  }

  String getQuestion() => _questionBank![_questionNumber].question;

  int getAnswer() {
    String correctAnswer = _questionBank![_questionNumber].answer;
    // add 1 because index starts with 0 here but options start from 1
    return getAnswerIndex(correctAnswer) + 1;
  }

  int getAnswerIndex(String userAnswer) {
    Set<String> options = _questionBank![_questionNumber].options;

    int index = 0;
    for (String option in options) {
      if (option == userAnswer) {
        return index;
      }
      index++;
    }
    return -1;
  }

  int questionSize() => _questionBank!.length;

  void getOptions() {
    print('Choose options (1,2,3) :');
    Set<String> options = _questionBank![_questionNumber].options;
    int optionLabel = 1;
    for (String option in options) {
      print('$optionLabel. $option');
      optionLabel++;
    }
    // reset the option index label
    optionLabel = 1;
  }

  String checkAnswer(int userChosenNum) {
    if (userChosenNum == getAnswer()) {
      _score++;
      return 'Correct';
    }
    return 'Incorrect';
  }

  void reset() {
    _score = 0;
    _questionNumber = 0;
  }

  void nextQuestion() {
    _questionNumber++;
  }

  int getResult() => _score;
}
