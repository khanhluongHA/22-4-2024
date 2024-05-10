// trong dart không có từ khóa interface nhưng chúng ta sẽ sử dụng các lớp trừu tượng để định nghĩa ra dao diện
// ví dụ
// animal dao diện thứ nhất
import 'package:flutter/material.dart';

abstract class Animal {
  void makeSound();
}

// flyable là dao diện thứ 2
abstract class Flyable {
  void fly();
}

// triển khai dao diện
class Bird implements Animal, Flyable {
  @override
  void makeSound() {
    print('chip chip');
  }

  @override
  void fly() {
    print('Flapping wings and flying');
  }
}

void printBird() {
  var bird = Bird();
  bird.makeSound();
  bird.fly();
}

// ví dụ 2
abstract class Shape {
  double calculateArea();
}

class Circle implements Shape {
  double radius;
  Circle(this.radius);
  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }

  void display() {
    print('radius: $radius, area: ${calculateArea()}');
  }
}

class Rectangle implements Shape {
  double width;
  double height;
  Rectangle(this.height, this.width);
  @override
  double calculateArea() {
    return width * height;
  }

  void display() {
    print('width: $width, height: $height, area: ${calculateArea()}');
  }
}

void printShapeArea() {
  var areaCircle = Circle(3);
  areaCircle.display();
  var areaRectangle = Rectangle(2, 10);
  areaRectangle.display();
}
