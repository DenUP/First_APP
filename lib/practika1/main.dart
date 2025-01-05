main() {
  var car = Car();
  car.startEngine();
  car.stopEngine();
}

abstract class Vehicle {
  void startEngine();
  void stopEngine();
}

class Drivable {
  void drive() {}
}

class Car implements Vehicle, Drivable {
  void startEngine() {
    print('open door');
    print('fari');
  }

  void stopEngine() {
    print('fari');
    print('close door');
  }
  void drive(){}
}
