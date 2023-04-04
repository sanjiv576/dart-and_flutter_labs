import 'dart:math';

void main() {
  multiplicationTables1_9();
}

// wap to generate multiplication tables of 1-9

void multiplicationTables1_9() {
  for (int i = 1; i <= 9; i++) {
    multiplicationTables(i);
  }
}

void multiplicationTables(int number) {
  for (int i = 1; i <= 10; i++) {
    print('$number X $i = ${number * i}');
  }
  print('');
}
