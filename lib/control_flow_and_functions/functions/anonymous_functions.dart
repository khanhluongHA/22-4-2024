// hàm ẩn
import 'package:flutter/material.dart';

void cube() {
  var list = [1, 2, 3];
  list.forEach((element) {
    var core = element * element * element;
    print(core);
  });
}

void demo() {
  String Function(String) printNameA = (String n) => n.toUpperCase();
  String Function(String) printNameB = (final n) => n.toUpperCase();
  String Function(String) printNameC = (var n) => n.toUpperCase();
  String Function(String) printNameE = (n) => n.toUpperCase();

  String resultA = printNameA("abc");
  String resultB = printNameB("xyz");
  String resultC = printNameC("hello");
  String resultD = printNameE("namee");

  print(resultA);
  print(resultB);
  print(resultC);
  print(resultD);
}

void test(void Function(int) action) {
  final List<int> list = [1, 2, 3, 4, 5, 6];
  for (var item in list) {
    action(item);
  }
}

void prints() {
  test((int value) {
    print("Number $value");
  });
}

// cách sử dụng khác
void anonymous() {
  final list = [1, 2, 3, 4];
  list.forEach((int x) => print("number $x"));
}
