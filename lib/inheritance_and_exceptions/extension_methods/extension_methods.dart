// cú pháp
// extension ExtendTypeName on ExistingType{
//  khái báo mở rộng tại đây
// }
//ExtendTypeName: là tên của extension và  ExistingType là loại bạn muốn mở rộng
// nó sẽ cho mình phép mình thêm các phương thức mới mà không cần thay đổi mã nguồn và tạo lớp con
// ví dụ
// định nghĩa 1 extension
extension StringExtension on String {
  // phương thức in chuỗi nhiều lần
  String multiply(int times) {
    return this * times;
  }
}

void printHello() {
  String str = 'hello  ';
  print(str.multiply(3));
}

// vd khác
extension ListExtension on List<int> {
  int sum() {
    int result = 0;
    for (var num in this) {
      result += num;
    }
    return result;
  }

  // tính trung bình các phần tử trong danh sách
  double average() {
    if (this.isEmpty) {
      return 0.0;
    }
    return this.sum() / this.length;
  }
}

void lists() {
  List<int> numbers = [1, 2, 3, 4, 5];
  print(numbers.sum());
  print(numbers.average());
}

// ví dụ khác
extension FactionExt on String {
  bool isFaction() {
    return RegExp(r'^-?\d+\/\d+$').hasMatch(this);
    // ignore: dead_code
    Faction toFaction() {
      // chuyển đổi chuỗi thành đối tượng phân số
      List<String> parts = this.split('/');
      int numerator = int.parse(parts[0]);
      int denominator = int.parse(parts[1]);
      return Faction(numerator, denominator);
    }
  }
}

class Faction {
  int numerator;
  int denominator;
  Faction(this.numerator, this.denominator);
  double toDouble() {
    return numerator / denominator;
  }

  @override
  String toString() {
    return '$numerator/$denominator';
  }
}
// tổng kết lại
///1. sử dụng bên trong
/// có 3 cái 
/// - extends 
/// - implement: cần ghi đè mọi phương thức sử dụng nó khi bạn xác định một API có nhiều loại
/// - mixin: để coppy và dán làm giảm sự trùng lặp của mã
/// => những cái này để sử dụng bên trong vì nó có thể hoạt động trực tiếp của cái lớp đấy
///2. sử dụng bên ngoài
/// - extensions: mở rộng thêm chức năng bên trong của một lớp mà không cần chạm vào bên trong
/// => cái này được sử dụng bên ngoài vì nó không thể sử dụng lớp bên trong
