// từ khóa async nó sẽ trả về một future và có thể chứa các tác vụ đồng bộ bên trong
// từ khóa await được sử dụng trong hàm đánh dấu là async.
// nó sẽ dừng việc thực thi của hàm đó khi future được hoàn thành
// ví dụ
import 'dart:async';
import 'dart:math';

import 'package:flutter_tutorial/control_flow_and_functions/control_flow/switch_statement.dart';

//tải dữ liệu từ internet
Future<String> fetchData() async {
  await Future.delayed(const Duration(seconds: 3));
  return 'Dữ liệu đc tải thành công';
}

void download() async {
  print('Bắt đầu tải dữ liệu');
  var data = await fetchData();
  print(data);
  print('hoàn thành dữ liệu');
}

Future<String> fetchDataFromUrl(String url) async {
  await Future.delayed(Duration(seconds: Random().nextInt(4) + 1));
  return 'Dữ liệu từ url: $url';
}

// hàm để tải dữ liệu từ  URl
Future<List<String>> fetchAllData(List<String> urls) async {
  var futures = <Future<String>>[];
  for (var url in urls) {
    futures.add(fetchDataFromUrl(url));
  }
  return await Future.wait(futures);
}

void printData() async {
  print('Bắt đầu tải dữ liệu từ url');
  final urls = ['url1', 'url2', 'url3', 'url4', 'url5', 'url123'];
  // gọi fetchAllData để tải dữ liệu từ url
  List<String> data = await fetchAllData(urls);
  // in dữ liệu
  data.forEach((element) {
    print(element);
  });
  print('hoàn thành tải dữ liệu');
}

// ví dụ về kiểu dữ liệu int
Future<int> complexCalculation(int n) async {
  await Future.delayed(const Duration(seconds: 3));
  return n * n;
}

// hàm tính tổng của 1 dãy số nguyên
Future<int> sum(List<int> numbers) async{
  int result = 0;
  for (var number in numbers){
    result += await complexCalculation(number);
  }
  return result;
}

void loadSum() async {
  print('Bắt đầu tính tổng:...');
  final List<int> numbers = List.generate(
      5, (index) => Random().nextInt(10)); // tạo 1 dãy số ngẫu nhiên
  print('dãy số nguyên: $numbers');
  int total = await sum(numbers);
  print('tổng là: $total');
}
