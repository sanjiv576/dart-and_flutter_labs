void main() {
  print(positivieOrNegative(number : 4));
  print(positivieOrNegative(number : -2));
  print(positivieOrNegative());
}

// wap to check whether a number is positive or negative

String positivieOrNegative({int number = 0}) {
  if (number < 0) {
    return '$number is negative';
  } else if (number > 0) {
    return '$number is positive';
  } else {
    return '$number is zero';
  }
}
