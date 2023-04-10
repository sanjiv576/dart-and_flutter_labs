import 'dart:io';

import 'quiz.dart';
Quiz quiz = Quiz();

void main() {
  startQuiz();
}

void startQuiz() {
  for (int i = 0; i < quiz.questionSize(); i++) {
    print('');
    print('Question number ${i + 1}/${quiz.questionSize()}');

    print(quiz.getQuestion());
    print('');

    quiz.getOptions();
    print('');

    print('Enter your option:');
    int chosenAnswer = int.parse(stdin.readLineSync()!);

    print('Feedback : ${quiz.checkAnswer(chosenAnswer)}');
    quiz.nextQuestion();

    print('');
  }

  print('Your result : ${quiz.getResult()} out of ${quiz.questionSize()}');

  quiz.reset();
}
