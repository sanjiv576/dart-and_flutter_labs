void main() {
  Cat cat = Cat(id: 101, name: 'Nana', color: 'white', sound: 'meow');
  cat.catDetails();
}
// 3. Write a dart program to create a class Animal with properties [id, name, color].
// Create another class called Cat and extends it from Animal. Add new properties sound in String.
//Create an object of a Cat and print all details.

class Animal {
  int id;
  String name;
  String color;

  Animal({required this.id, required this.name, required this.color});
}

class Cat extends Animal {
  String sound;
  Cat(
      {required int id,
      required String name,
      required String color,
      required this.sound})
      : super(id: id, name: name, color: color);

  void catDetails() {
    print('ID : $id \nName : $name \nColor : $color \nSound : $sound');
  }
}
