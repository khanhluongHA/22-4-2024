//number:
import 'package:flutter_tutorial/variables_and_data_types/variable/variable_basis.dart';

var a = 10;
var b = 20;
var c = a + b;
// chi  tiết
int x = 10;
double y = 30;
num z = 20 - x + y; // num là kiểu dữ liệu cả số nguyên và số thực

// kiểu giá trị không đổi
const valueA = 10;
const valueB = 2 * valueA;

//bool: lưu trữ giá trị true hoặc false

//String: kiểu chuỗi

// parse(String): ép kiểu từ chuỗi về biến tương ứng
String numberString = '10';
int number = int.parse(numberString);
// abs: trị tuyệt đối
const int abc = 5;
final String xyz = 'sdas';
int g = -5;
int absoluteNumber = g.abs();
//ceil: trả về số làm tròn
double pi = 3.14;
int roundUpNumber = pi.ceil();
//toString: ép kiểu thành chuỗi
int k = 20;
String numberStrings = k.toString();
// demo
void goodPractices() {
  String value = "50";
  var numberX = int.parse(value);
  var numberY = double.parse("3.678");
  var numberZ = int.parse("13", radix: 6);
  var sum = (numberX + numberY + numberZ);
  print(sum);
}

void stringConcatenation() {
  String vA = 10.toString(); // toString chuyển đổi một giá trị số thành chuỗi,
  String vB = 20.30.toString();
  String vC = 100.123.toStringAsFixed(
      1); // toStringAsFixed chuyển đổi số thành chuỗi truyền vào giá trị bên trong thì số đó sẽ được giữ lại và mất chuỗi đằng sau nó
  print(vA + " " + vB + " " + vC);
}

// nếu chuỗi không phải một số thì val là null
double? val = double.tryParse(
    "120.3x"); // dauble tryParse là một chuỗi chuyển sang dạng số thực nếu nó không phải số thì là null
double? yes = double.tryParse(
    "123.321"); // 123.321 là một number hợp lệ nên tryParse sẽ chuyển nó thành số thực và yes sẽ gán giá trị đó

// hàm check lỗi onError


