// 6. Write a dart program demonstrating the use of an abstract class.

void main() {
  Vehicle car = Car(brand: 'Tesla', wheelNum: 4, runBy: 'Current');
  car.drive();
  print('');
  Vehicle bike = Bike(wheelNumber: 2, runBy: 'Disel');
  bike.drive();
}

abstract class Vehicle {
  int wheelNum;
  String runBy;
  Vehicle({required this.wheelNum, required this.runBy});

  // abstract method
  void drive();
}

class Car extends Vehicle {
  String brand;
  Car({required int wheelNum, required String runBy, required this.brand})
      : super(wheelNum: wheelNum, runBy: runBy);

  @override
  void drive() {
    print(
        'Brand name : $brand \nNumber of wheel : $wheelNum \nRun using : $runBy');
  }
}

class Bike extends Vehicle {
  Bike({required int wheelNumber, required String runBy})
      : super(wheelNum: wheelNumber, runBy: runBy);

  @override
  void drive() {
    print('Number of wheel : $wheelNum \nRun using : $runBy');
  }
}
