// định nghĩa 1 mixin
mixin Swimming {
  void swim() {
    print('Swimming...');
  }
}

// định nghĩa một lớp sử dụng mixin
class Fish with Swimming {
  String name;
  Fish(this.name);
  void displayInfo() {
    print('fish: $name');
  }
}

void nameFish() {
  var fish = Fish('Nemo');
  fish.swim();
  fish.displayInfo();
}

// ví dụ 2
// định nghĩa mixin
mixin Movable {
  void move(String direction) {
    print('Moving: $direction');
  }
}

//lớp cha
class Shape {
  void display() {
    print('display shape');
  }
}

//lớp hình tròn kế thừa từ lớp shape và sử dụng mixin movable
class Circle extends Shape with Movable {
  double radius;
  Circle(this.radius);
  void showInformation() {
    print('radius: $radius');
  }
}

class Rectangle extends Shape with Movable {
  double width;
  double height;
  Rectangle(this.width, this.height);
  void showInformation() {
    print('width: $width, height: $height');
  }
}

void printInformation() {
  var circle = Circle(12);
  var rectangle = Rectangle(12, 31);
  circle.move('left');
  circle.display();
  circle.showInformation();
}
