void main() {
  print(addition(firstNumber: 4, secondNumber: 5));
  print(subtraction(firstNumber: 14, secondNumber: 12.3));
  print(multiplication(firstNumber: 4, secondNumber: 5));
  print(division(firstNumber: 44, secondNumber: 3));
}

// wap to create a simple calculator that performs addition, subtraction, multiplciation, division

double addition({double firstNumber = 0, double secondNumber = 0}) {
  return firstNumber + secondNumber;
}

double subtraction({double firstNumber = 0, double secondNumber = 0}) {
  return firstNumber - secondNumber;
}

double multiplication({double firstNumber = 1, double secondNumber = 1}) {
  return firstNumber * secondNumber;
}

double division({double firstNumber = 1, double secondNumber = 1}) {
  return firstNumber / secondNumber;
}
