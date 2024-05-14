// Set là một tập hợp các phần tử duy nhất không có thứ tự
// Set cung cấp các thao tác phổ biến như: thêm phần tử, xóa phần tử, kiểm tra sự tồn tại của phần tử
// ví dụ
// ignore: non_constant_identifier_names
import 'package:flutter_tutorial/variables_and_data_types/data_type/string.dart';

void set() {
  // tạo 1 Set rỗng
  Set<String> fruits = Set<String>();
  // thêm phần tử vào Set
  fruits.add("apple");
  fruits.add("meo meo");
  fruits.add("Orange");
  // in các phần tử trong Set
  print(fruits);
  // Kiểm tra sự tồn tại của một phần tử trong set
  print(fruits.contains("apple")); // => true or fail
  // xóa phần tử khỏi 1 set
  // fruits.remove("meo meo");
  print(fruits);
  // lấy số lượng phần tử trong Set
  print(fruits.length);
  // lặp phần tử trong set
  for (var fruit in fruits) {
    print(fruit);
  }
}

// ví dụ loại bỏ phần tử lặp
void loop() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 4, 3, 2, 5, 6, 2, 9, 8, 1];
  // tạo set từ danh sách các số
  Set<int> uniqueNumber = Set<int>.from(numbers);
  print('danh sách số nguyên: $numbers');
  print('danh sách không lặp: $uniqueNumber');
}
