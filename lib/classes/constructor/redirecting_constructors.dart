class Rectangle {
  int width;
  int height;
  Rectangle.square(int size) : this(size, size);
  // hàm tạo chuyển hướng
  Rectangle.fromRectangle(Rectangle another)
      : this(another.width, another.height);
  // hàm tạo chính
  Rectangle(this.width, this.height);
  void printRectangle() {
    print('width: $width, height: $height');
  }
}

void information() {
  Rectangle square = Rectangle.square(5);
  square.printRectangle();
  Rectangle rectangle = Rectangle.fromRectangle(Rectangle(3, 7));
  rectangle.printRectangle();
}

// ví dụ khác
class Persons {
  String name;
  int age;
  // hàm tạo chính
  Persons(this.name, this.age);
  // hàm tạo chuyển hướng đến hàm tạo khác trong cùng lớp
  Persons.fromName(String name) : this(name, 0);
  //Hàm tạo chuyển hướng đến hàm tạo trong lớp khác
  Persons.fromAnotherPerson(Persons another) : this(another.name, another.age);
  void printInformation() {
    print('name: $name, age: $age');
  }
}

void printPersons() {
  Persons persons1 = Persons('luong', 20);
  persons1.printInformation();
  Persons persons2 = Persons.fromName('hai');
  persons2.printInformation();
  Persons persons3 = Persons.fromAnotherPerson(Persons('hieu', 25));
  persons3.printInformation();
}
