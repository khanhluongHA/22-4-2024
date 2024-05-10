// object là gốc của tất cả các lớp và chứa tất cả các phương thức mà các lớp đều có sẵn
// một số phương thức quan trọng của các lớp object và ý nghĩa
// 1. toString: trả về một chuỗi mình có thể ghi đè để nó trả về rõ hơn một đối tượng
// 2. handsCode(): trả về một số nguyên là mã băm
// 3. operator==(): Phương thức này kiểm tra xem hai đối tượng có bằng nhau hay không(so sánh)
// 4. runtimeType: Thuộc tính trả về một đối tượng Type

// ví dụ

class Person {
  String name;
  int age;
  Person(this.name, this.age);
  // ghi đè để trả về thông tin chi tiết của một đối tượng
  @override
  String toString() {
    return 'Person: {name: $name, age: $age}';
  }

  // ghi đè phương thức handsCode để tạo mã dựa trên dữ liệu đối tượng
  @override
  int get handsCode => name.hashCode ^ age.hashCode;
  // ghi đè phương thức operator==() để so sánh dữ liệu hai đối tượng
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          age == other.age;
}

void persons() {
  var persons1 = Person('alice', 20);
  var persons2 = Person('alice', 12);
  print(persons1.toString());
  print(persons2.handsCode);
  print(persons1 == persons2);
}

// ví dụ khác
class Vector {
  final int x;
  final int y;
  Vector(this.x, this.y);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Vector &&
          runtimeType == other.runtimeType &&
          x == other.x &&
          y == other.y;
  @override
  int get hashCode => x.hashCode ^ y.hashCode;
}

void printVector() {
  var vector1 = Vector(3, 4);
  var vector2 = Vector(3, 4);
  var vector3 = Vector(1, 5);

  print(vector1 == vector2);
  print(vector1 == vector3);

  var vectorSet = {vector1, vector2, vector3};
  print(vectorSet.length);
}
