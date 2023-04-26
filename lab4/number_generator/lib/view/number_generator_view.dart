import 'package:flutter/material.dart';

import '../model/number_generator.dart';

class NumberGeneratorView extends StatefulWidget {
  const NumberGeneratorView({super.key});

  @override
  State<NumberGeneratorView> createState() => _NumberGeneratorViewState();
}

class _NumberGeneratorViewState extends State<NumberGeneratorView> {
  bool showResultWidget = false;

  NumberGenerator numberGenerator = NumberGenerator();

  int questionNumCounter = 0;

  final int questionLimit = 10;

  late int firstNumber;
  late int secondNumber;
  late List<int> numList;

// run this when the widget is invoked
  @override
  void initState() {
    super.initState();
    // numberGenerator = NumberGenerator();
    getNumbers();
  }

  void getNumbers() {
    // get a list of two different numbers
    numList = numberGenerator.getNumbers;
    // get each number and  change UI as well
    setState(() {
      firstNumber = numList[0];
      secondNumber = numList[1];
    });
  }

  void submitUserAnswer({required int userSubmitAnswer}) {
    questionNumCounter++;

    if (isComplete()) showResultWidget = true;
    numberGenerator.checkUserAnswer(userAnswer: userSubmitAnswer);
    // again, get new numbers by calling _getNumber method
    getNumbers();
  }

  bool isComplete() => questionNumCounter >= questionLimit;

  void reset() {
    // reset result
    numberGenerator.resetResult();

    // reset UI
    showResultWidget = false;
    questionNumCounter = 0;
    getNumbers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Number Generator Game',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: const Color(0xFFB02B33),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 73,
                    width: 97,
                    child: ElevatedButton(
                      // disable button if the question limit is met
                      onPressed: isComplete()
                          ? null
                          : () {
                              submitUserAnswer(userSubmitAnswer: firstNumber);
                            },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFD9D9D9),
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          )),
                      child: Text(
                        firstNumber.toString(),
                        style: const TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 73,
                    width: 97,
                    child: ElevatedButton(
                      // disable button if the question limit is met
                      onPressed: isComplete()
                          ? null
                          : () {
                              submitUserAnswer(userSubmitAnswer: secondNumber);
                            },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFD9D9D9),
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      child: Text(
                        secondNumber.toString(),
                        style: const TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              showResultWidget
                  ? Column(
                      children: [
                        const SizedBox(
                          height: 70.0,
                        ),
                        const Text(
                          'RESULT',
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'Correct Answer: ',
                            style: const TextStyle(
                                fontSize: 23,
                                color: Colors.white,
                                fontStyle: FontStyle.italic),
                            children: <TextSpan>[
                              TextSpan(
                                  text: '${numberGenerator.correctScore}',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 45))
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'Incorrect Answer: ',
                            style: const TextStyle(
                                fontSize: 23,
                                color: Colors.white,
                                fontStyle: FontStyle.italic),
                            children: <TextSpan>[
                              TextSpan(
                                  text: '${numberGenerator.incorrectScore}',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 45))
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 25.0,
                        ),
                        SizedBox(
                          height: 60.0,
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              // reset UI and counter
                              reset();
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF5E5CD1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                )),
                            child: const Text(
                              'Restart Game',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    )
                  : Container()
            ],
          ),
        ),
      ),
    );
  }
}
