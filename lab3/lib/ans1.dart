void main() {
  Laptop laptop = Laptop(id: 123, name: 'Dell', ram: '16 GB');
  laptop.printDetails();
}

// 1. Write a dart program to create a class Laptop with properties [id, name, ram] and create 3 objects of it and print all details.
class Laptop {
  int id;
  String name;
  String ram;

  Laptop({required this.id, required this.name, required this.ram});

  void printDetails() {
    print('ID : $id \nName : $name \nram : $ram');
  }
}
