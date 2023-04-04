void main() {
  print(oddOrEven(number: 11));
}

// wap to check if the number is odd or even

String oddOrEven({int? number}) {
  if (number! % 2 == 0) {
    return 'even';
  }
  return 'odd';
}

