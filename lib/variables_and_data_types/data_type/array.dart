// ignore_for_file: public_member_api_docs, sort_constructors_first
// tạo mảng
import 'dart:async';

List<Person> name = [
  Person(name: 'Khánh Lương', age: 20),
  Person(name: "Nguyễn Nam", age: 20)
];

class Person {
  final String name;
  final int age;
  Person({
    required this.name,
    required this.age,
  });
}

void ps() {
  // ignore: unused_local_variable
  for (var pss in name) {
    for (var e in name) {
      print('Name: ${e.name}, Age: ${e.age}');
    }
  }
}
// ngoài ra ta có thể dùng cách khác

final myList = [1, 2, 3, 4, 5];
final listOne = myList[1]; // nếu in ra thì nó sẽ bằng 2

// các thao tác đối với list

//1. length đến số lượng phần tử trong List
List<int> numbers = [1, 2, 3, 4, 5];
void countList() {
  print(numbers.length);
}

//2. add thêm phần tử vào cuối danh sách

List<String> fruits = ["chuối", "nhãn", "xoài", "cóc", "Bưởi"];
void addList() {
  fruits.add("dưa hấu");
  print(fruits);
}

//3. isEmpty kiểm tra xem trong List có phần tử nào khoong nếu có thì trả về false còn không có thì trả về true

List<String> hollow = [];
void checkHollow() {
  print(hollow.isEmpty); // trường hợp này nó trả về true
}

//4. contains kiểm tra thử xem danh sách có chứa 1 phần tử cụ thể không,
// nếu trả về  true là có false là không

List<String> detail = ['đỏ', 'cam', 'vàng', 'lục', 'lam'];

void checkDetail() {
  print(detail.contains('tràm'));
}

