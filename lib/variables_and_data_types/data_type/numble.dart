//number:
var a = 10;
var b = 20;
var c = a + b;

int x = 10;
double y = 30;
num z = 20 - x + y;

// kiểu giá trị không đổi
const valueA = 10;
const valueB = 2 * valueA;

//bool: lưu trữ giá trị true hoặc false

//String: kiểu chuỗi

// parse(String): ép kiểu từ chuỗi về biến tương ứng
String numberString = '10';
int number = int.parse(numberString);
// abs: trị tuyệt đối
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
