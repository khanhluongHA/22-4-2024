// constructor

class Person {
  String name;
  int age;
  // constructor mặc định
  Person(this.name, this.age);
  // constructor có tham số mặc định
  Person.fromName(String name) : this(name, 0);
  // constructor sử dụng từ khóa const
  Person.constant(this.name, this.age);
}

void printPerson() {
  var person1 = Person("john", 30);
  var person2 = Person("Alice",3);
  var person3 = Person.constant("yasuo", 20);
}
