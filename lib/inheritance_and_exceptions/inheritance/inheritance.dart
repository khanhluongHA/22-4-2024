//Inheritance là một thuộc tính kế thừa
// tạo một lớp con kế thừa từ lớp cha
// ví dụ
class Animal {
  String name;
  Animal(this.name);
  void speak() {
    print('$name make asound');
  }
}

class Dog extends Animal {
  Dog(String name) : super(name);
  @override
  void speak() {
    print("$name gâu gâu");
  }
}

class Cat extends Animal {
  Cat(String name) : super(name);
  @override
  void speak() {
    print('$name meo meo');
  }
}

void printSound() {
  var dog = Dog('betgie');
  var cat = Cat('meo');
  dog.speak();
  cat.speak();
}

// ví dụ khác
class Vehicle {
  String brand;
  int year;
  Vehicle(this.brand, this.year);
  void displayInfo() {
    print('Brand: $brand, Year: $year');
  }
}

// lớp con kế thừa từ lớp cha
class Car extends Vehicle {
  String model;
  Car(String brand, int year, this.model) : super(brand, year);
  @override
  void displayInfo() {
    super.displayInfo();
    print('model: $model');
  }
}

void printCar() {
  var myCar = Car('toyota', 2000, 'camry');
  myCar.displayInfo();
}
