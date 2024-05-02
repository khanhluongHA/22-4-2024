// ignore_for_file: public_member_api_docs, sort_constructors_first
// toán tử is
class Animal {
  void makeSound() {
    print("void make a sound");
  }
}

class Dog extends Animal {
  void bark() {
    print("gâu gâu");
  }
}

class Cat extends Animal {
  void chirp() {
    print('meo meo');
  }
}

void checkDog() {
  Animal cat = Cat();
  Animal animal = Dog();
  if (cat is Cat) {
    cat.chirp();
  } else {
    cat.makeSound();
  }
}

// toán tử as
class Shape {
  void calculateArea() {
    print("Area calculate not implemented.");
  }
}

class Circle extends Shape {
  double radius;
  Circle(this.radius); // tạo constructor
  @override
  void circleArea() {
    double area = 3.14 * radius * radius;
    print("diện tích hình tròn là: $area");
  }
}

class Rectangle extends Shape {
  double length;
  double width;
  Rectangle(this.length, this.width);
  @override
  void rectangleArea() {
    double recArea = length * width;
    print("diện tích hình chữ nhật là: $recArea");
  }
}

void checkArea() {
  Shape shape = Rectangle(2, 3);
  if (shape is Circle) {
    Circle circle = shape as Circle; // ép kiểu thành Circle
    circle.circleArea();
  } else if (shape is Rectangle) {
    Rectangle rectangle = shape as Rectangle; // ép kiểu thành Rectangle
    rectangle.rectangleArea();
  } else {
    print("unknown Shape");
  }
}

class Car {
  void cars() {
    print("Types of car");
  }
}

class Toyota extends Car {
  @override
  void cars() {
    print("this is Toyota ");
  }
}

class Honda extends Car {
  @override
  void cars() {
    print("this is Honda");
  }
}

void checkCars() {
  List<Car> isCars = [Toyota(), Honda(), Toyota(), Honda(),];
  for (var car in isCars) {
    if (car is! Honda) {
      print("that is not it Honda");
    } else {
      car.cars();
    }
  }
}
