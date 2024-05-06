// ví dụ
class Person {
  String name;
  int age;
  Person(this.name, this.age) : assert(age > 0);
  void sayHello() {
    print('hello, my name is $name i am $age year old');
  }
}

void inputNameAge() {
  var person = Person('luong', 19);
  person.sayHello();
}

// thực hành
class Persons {
  final String name;
  final int age;
  final String status;
  Persons(this.name, this.age) : status = age < 18 ? 'underage' : 'adult';
  void printInfo() {
    print('name: $name');
    print('age: $age');
    print('status: $status');
  }
}

void printPersonal() {
  var personsA = Persons('alice', 20);
  var personsB = Persons('bob', 14);
  personsA.printInfo();
  personsB.printInfo();
}

// private
class Circle {
  double? _radius;
  double get radius => _radius!;
  set radius(double value) {
    if (value > 0) {
      _radius = value;
    } else {
      print('radius must be greater than 0');
    }
  }

  double? _area;
  Circle(double radius)
      : _radius = radius,
        _area = calculateAreal(radius);
  static double calculateAreal(double radius) {
    return 3.14 * radius * radius;
  }

  void printCircle() {
    print('Radius: $radius');
    print('Area: $_area');
  }
}

void inputCircle() {
  var circle = Circle(5);
  circle.printCircle();
}
