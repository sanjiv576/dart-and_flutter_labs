void main() {
  fruitNames();
}

// Create a set of fruits and print all fruits using a loop.
void fruitNames() {
  Set fruits = {'apple', 'banana', 'oragne', 'jackfruit', 'pineapple'};

  for (String fruit in fruits) {
    print(fruit);
  }
}
