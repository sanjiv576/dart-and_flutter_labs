void main() {
  printMultiplication(number: 5);
}

// wap to generate multiplication tables of 5

void printMultiplication({int? number}) {
  for (int i = 1; i <= 10; i++) {
    print('$number X $i = ${number! * i}');
  }
}
