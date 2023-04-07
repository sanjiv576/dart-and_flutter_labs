void main() {
  print(oddOrEven(number: 11));
  print(oddOrEven(number: 2));
  print(oddOrEven(number: 0));
}

// wap to check if the number is odd or even

String oddOrEven({int? number}) {
  if (number == 0) {
    return '$number is neither even nor odd';
  }
  else if (number! % 2 == 0) {
    return '$number is even number';
  }
  return '$number is odd number';
}
