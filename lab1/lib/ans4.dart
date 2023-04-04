void main() {
  printName(name: 'Sanjiv');
}

// to print your name 100 times

void printName({String? name}) {
  for (int i = 0; i < 100; i++) {
    print(' $name ${i+1}');
  }
}
