import 'dart:ffi';

abstract class Shape {
  // phương thức
  void calculateArea();
}

class Circle extends Shape {
  double radius;
  Circle(this.radius);
  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }

  void display() {
    print("Radius = $radius, Area = ${calculateArea()}");
  }
}

class Rectangle extends Shape {
  double width;
  double height;
  Rectangle(this.width, this.height);
  @override
  double calculateArea() {
    return width * height;
  }

  void display() {
    print('width = $width, height = $height, Area = ${calculateArea()}');
  }
}

void dataShape() {
  var circle = Circle(10);
  circle.display();
  var rectangle = Rectangle(10, 20);
  rectangle.display();
}
// tóm lại là
/// một abstract_classes không có intance và có method nhưng không có phần thân