// lập trình không đồng bộ sử dụng các phép so sánh
// để thực hiện một cách tuần tự không gây ra trênh lệch và  giảm hiệu xuất của trương trình
import 'dart:async';
import 'dart:io';
import 'dart:math';

Future<int> processData(int param1, int param2) {
  return Future.delayed(Duration(seconds: Random().nextInt(5)), () {
    return (param2);
  });
}

void compare() {
  final process = processData(11, 13);
  process.then((value) => print('result = $value'));
  print('Future is bright');
}
