// khẳng định lỗi sai
void checkFails() {
  var a = 5;
  assert(a == 10, "number is less than 10");
  print("execution continues");
}

// khẳng định đúng
void checkCorrect() {
  final int posNum = 15;
  assert(posNum > 0, 'number must be positive');
  print("possitive number: $posNum");

}

// cú pháp
// assert(điều kiện, thông báo lỗi khi điều kiện sai)
class Student {
  final int age;
  Student({required this.age})
      : assert(age > 5, 'Student age must be more than 5');
}
