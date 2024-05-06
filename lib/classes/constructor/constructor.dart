// có 2 loại đối tượng constructor
// ignore_for_file: prefer_initializing_formals, non_constant_identifier_names

class Person {
  // constructor mặc định
  String? name;
  int? age;
  Person() {
    name = 'unknown';
    age;
  }
  // constructor có tham số
  Person.withNameAndAge(String name, int age) {
    this.name = name;
    this.age = age;
  }
  // thông tin của person
  void displayInfo() {
    print('name:$name, age: $age');
  }
}

void printPerson() {
  var personA = Person();
  personA.displayInfo();

  var PersonB = Person.withNameAndAge('luong', 123);
  PersonB.displayInfo();
}

// tính diện tích và chu vi hcn

class Rectangle {
  double? width;
  double? height;

  // constructor mặc định
  Rectangle() {
    width = 0;
    height = 0;
  }
  Rectangle.withDimensions(double width, double height) {
    this.width = width;
    this.height = height;
  }
  double calculateArea() {
    return width! * height!;
  }

  double calculatePerimeter() {
    return 2 * (width! + height!);
  }
}

void calculate() {
  // constructor mặc định
  var rectangleA = Rectangle();
  rectangleA.width = 6;
  rectangleA.height = 10;
  print('Area of rectangleA = ${rectangleA.calculateArea()}');
  print('Perimeter of rectangleA = ${rectangleA.calculatePerimeter()} ');
  // constructor có tham số
  var rectangleB = Rectangle.withDimensions(4, 7);
  print('Area rectangleB: ${rectangleB.calculateArea()}');
  print('perimeter of rectangleB: ${rectangleB.calculatePerimeter()}');
}
