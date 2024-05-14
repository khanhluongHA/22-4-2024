// operator== and hashCode là hai phương thức quan trọng để hỗ trợ việc lưu trữ và truy xuất
// các đối tượng trong cấu trúc dữ liệu như Map hoặc Set
// operator ==  là so sánh  tính bằng nhau của 2 đối tượng
// ví dụ
class Person {
  String name;
  int age;
  Person(this.name, this.age);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          age == other.age;
}

void persons() {
  var person1 = Person('john', 30);
  var person2 = Person('bob', 20);
  var person3 = Person('bob', 20);
  print(person1 == person2);
  print(person2 == person3);
}

// ví dụ khác về hands code là một phương thức được sử dụng để tạo ra một đối tượng
// mã số này thường được sử dụng trong cấu trúc dữ liệu như set hoặc map
// ví dụ
class Fruit {
  String type;
  String uses;
  Fruit(this.type, this.uses);
  @override
  int get hashCode => type.hashCode ^ uses.hashCode;
}

void compare() {
  var fruit1 = Fruit('banana', 'eat');
  var fruit2 = Fruit('banana', 'eat');
  var fruit3 = Fruit('pineapple', 'eat');
  print(fruit1 == fruit2);
  print(fruit3 == fruit2);
}
