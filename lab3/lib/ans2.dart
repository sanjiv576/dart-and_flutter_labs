void main() {
  House house = House(id: 221, name: 'Penton', price: 12434.783);
  house.details();
}

// 2. Write a dart program to create a class House with properties [id, name, prize].
// Create a constructor of it and create 3 objects of it. Add them to the list and print all the details.

class House {
  int id;
  String name;
  double price;

  late List<dynamic> list;

  House({required this.id, required this.name, required this.price}) {
    list = [this.id, this.name, this.price];
  }

  void details() {
    for (var element in list) {
      print(element);
    }
  }
}
