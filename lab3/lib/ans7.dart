// 7. Write a dart program demonstrating the use of multiple inheritance.
void main() {
  Son son = Son(
      hair: 'black',
      height: 'tall',
      car: 0,
      house: 0,
      skinColor: 'fair',
      bike: 1);
  son.showFeature();
  print('');
  son.showProperty();
}

abstract class Mother {
  String hair;
  String height;
  String skinColor;

  Mother({required this.hair, required this.height, this.skinColor = 'fair'});

  void showFeature();
}

abstract class Father {
  int car = 1;
  int house = 1;

  void showProperty();
}

class Son implements Mother, Father {
  @override
  String hair;

  @override
  String height;

  @override
  int house;

  @override
  String skinColor;

  @override
  int car;

  int bike;

  Son(
      {required this.hair,
      required this.height,
      required this.car,
      required this.house,
      required this.skinColor,
      this.bike = 0});

  @override
  void showFeature() =>
      print('Son has $hair hair, $height height and $skinColor skin tone.');

  @override
  void showProperty() =>
      print('Son has $car cars, $bike, bike and $house house');
}