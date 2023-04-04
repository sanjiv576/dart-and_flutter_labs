import 'dart:io';

void main() {
  printNames();
}

// Create a list of names and print all names using the list.

void printNames() {
  List<String> nepaliNames = ['Ram', 'Shyam', 'Hari', 'Gita', 'Sita'];

  for (String name in nepaliNames) {
    print(name);
  }
}


