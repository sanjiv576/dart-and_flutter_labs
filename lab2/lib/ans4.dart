void main() {
  namesBeginWithA();
}

// Add your 7 friend names to the list. Use where to find a name that starts with the alphabet a.
void namesBeginWithA() {
  List<String> friendNames = [
    'Anu',
    'John',
    'Angela',
    'Mike',
    'Ram',
    'Anuska',
    'Sanjiv'
  ];

// convert names in lowercase and use startswith method for a specific name
  List<String> namesBeginA = friendNames
      .where((element) => element.toLowerCase().startsWith('a'))
      .toList();

  for (String name in namesBeginA) {
    print(name);
  }
}
