void main() {
  Camera camera = Camera(id: 23, brand: 'Sony', color: 'black', price: 3500);

  camera.id = 11;
  print(camera.id);

  camera.brand = 'Nike';
  print(camera.brand);

  camera.color = 'pink';
  print(camera.color);

  camera.price = 3320;
  print(camera.price);
}

// 4. Write a dart program to create a class Camera with private properties [id, brand, color, prize].
//Create a getter and setter to get and set values. Also, create 3 objects of it and print all details.

class Camera {
  int? _id;
  String? _brand;
  String? _color;
  double? _price;

  Camera(
      {required int id,
      required String brand,
      required String color,
      required double price}) {
    this._id = id;
    this._brand = brand;
    this._color = color;
    this._price = price;
  }

  // getter methods for each field
  int get id => _id!;

  String get brand => _brand!;
  String get color => _color!;
  double get price => _price!;

  // setter method for each field
  set id(int newId) => _id = newId;
  set brand(String newBrand) => _brand = newBrand;
  set color(String newColor) => _color = newColor;
  set price(double newPrice) => _price = price;
}
