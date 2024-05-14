// map nó có dạng key-value
// mỗi key là duy nhất và không thể thay đổi
// kể cả số nguyên số thực và chuỗi

// một số thuộc tính quan trọng của Map

// putlfAbsent(): thêm 1 cặp key-value vào Map nếu key chưa được tồn tại
// remove(): xóa cặp key-value tương ứng cho trước
// containsKey(): kiểm tra xem Map có chứa key cho trước hay không
// keys: thuộc tính trả về một Iterable chứa tất cả các key trong Map.
// values(): trả về một Iterable chứa tất cả value trong map

// ví dụ
// import 'package:flutter_tutorial/variables_and_data_types/data_type/numble.dart';

void lockUp() {
  // tạo 1 Map có kiểu key là chuỗi và value là kí tự
  Map<String, int> scores = {'alice': 100, 'bob': 90, 'dung': 40};
  // truy cập giá trị của key trong map
  print('điểm của alice: ${scores['alice']}');
  // thêm 1 cặp key value
  scores['david'] = 95;
  // duyệt qua các key và value trong map
  scores.forEach((key, value) {
    print('$key: $value');
  });
  // kiểm tra xem map có chứa 1 key cụ thể không
  if (scores.containsKey('alice')) {
    print('alice có tồn tại trong danh sách');
  }
  // xóa 1 cặp value từ map
  scores.remove('bob');
  print('số lượng: ${scores.length}');
}

// ví dụ quản lý học sinh
class Student {
  final String id;
  final String name;
  final int age;
  final double averageScore;
  Student(this.id, this.name, this.age, this.averageScore);
  @override
  String toString() {
    return 'Student ID: $id, Student Name: $name, Student Age: $age, Student Score: $averageScore';
  }
}

void manage() {
  // tạo map để lưu trữ sinh viên với key là mã sinh viên và đối tượng là student
  Map<String, Student> studentMap = {
    '001': Student('001', 'alice', 20, 70.3),
    '002': Student('002', 'yone', 30, 10.4),
    '003': Student('003', 'materyi', 40, 70.5),
  };
  // thêm 1 sinh viên
  Student newStudent = Student('004', 'temmo', 21, 50.4);
  studentMap[newStudent.id] = newStudent;
  // in thông tin sinh viên trong 1 danh sách
  print('danh sách sinh viên');
  studentMap.forEach((id, student) {
    print(student);
  });
  // kiểm tra xem sinh viên có tồn tại không
  String searchId = '002';
  if (studentMap.containsKey(searchId)) {
    print('sinh viên $searchId có tồn tại');
  } else {
    print('sinh viên $searchId không tồn tại');
  }
  // xóa sinh viên
  String deleteId = '003';
  studentMap.remove(deleteId);
  // in thông tin danh sách sv sau khi xóa
  print('danh sách sinh viên sau khi xóa');
  studentMap.forEach((id, student) {
    print(student);
  });
}
