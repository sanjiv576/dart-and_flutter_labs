import 'dart:math';

class NumberGenerator {
  int? _firstNum;
  int? _secondNum;

  final List<int> _list = [0, 0];
  final Random _random = Random();

  int _correctCounter = 0;
  int _incorrectCounter = 0;

  int get correctScore => _correctCounter;
  int get incorrectScore => _incorrectCounter;

// generate random numbers between 1 and 100
  int _generateRandomNumber() {
    int min = 1;
    int max = 100;
    return min + _random.nextInt(max - min);
  }

// getter method
  List<int> get getNumbers => _getRandomNumbers();

// return a list of two different random numbers
  List<int> _getRandomNumbers() {
    // get random number until both numbers are equal
    do {
      _firstNum = _generateRandomNumber();
      _secondNum = _generateRandomNumber();
    } while (_firstNum == _secondNum);

    // push values in index 0 and 1
    _list[0] = _firstNum!;
    _list[1] = _secondNum!;
    return _list;
  }

// increase correct counter if the user answer is correct
  void checkUserAnswer({required int userAnswer}) =>
      userAnswer == _correctAnswer() ? _correctCounter++ : _incorrectCounter++;

// return correct answer
  int _correctAnswer() => _firstNum! > _secondNum! ? _firstNum! : _secondNum!;

  void resetResult() {
    _correctCounter = 0;
    _incorrectCounter = 0;
  }
}
