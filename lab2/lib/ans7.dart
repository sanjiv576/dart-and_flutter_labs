import 'dart:io';

void main() {
  expensesInfo();
}

// Create a program that reads a list of expenses amount using user input and prints the total.

void expensesInfo() {
  List<double> expenses = [];

  String? userResponse;

  do {
    // take expense amount from user
    print('Enter your expenses amount : ');
    double expenseAmount = double.parse(stdin.readLineSync()!);

    // add in the list
    expenses.add(expenseAmount);

    print('Do you want to more ? Press(y/n)');
    userResponse = stdin.readLineSync()!;
  } while (userResponse == 'y');

  // iterate each amount and add it and then, show total expenses
  double totalAmount = 0.0;
  for (double amount in expenses) {
    totalAmount += amount;
  }

  print('Total expenses is $totalAmount');
}
