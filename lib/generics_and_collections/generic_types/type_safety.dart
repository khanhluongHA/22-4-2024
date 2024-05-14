// type safety đây là kiểu an toàn của dữ liệu
// khi mà bạn cố gán một giá trị có kiểu dữ liệu không tương thích với  biến
// nó sẽ cảnh báo ngay từ thời điể biên dịch
void err() {
  int number = 42;
  // number = "hello" không thể gán chuỗi cho một số nguyên
}
// kiểm tra giá trị của nó có phải là một số nguyên hay không

class GenericBox<T> {
  T value;
  GenericBox(this.value);
}

extension IntCheck<T> on GenericBox<T> {
  bool isInt() => value is int;
}

void add() {
  var box1 = GenericBox<int>(42);
  var box2 = GenericBox<String>("Hello");

  print(box1.isInt());
  print(box2.isInt());
}

// ví dụ khác
class User {
  final String id;
  final String email;
  User(this.id, this.email);
}

// lớp thừa kế từ user
class Customer extends User {
  final String address;
  Customer(String id, String email, this.address) : super(id, email);
}

// và một lớp kế thừa khác
class Admin extends User {
  final String department;
  Admin(String id, String email, this.department) : super(id, email);
}

void checkUser() {
  var customer1 = Customer("1", "abc@gmail.com", "HaNoi");
  var admin1 = Admin("2", "admin@gmail.com", "Hcm");

  print("customer1: ${customer1.id}, ${customer1.email}, ${customer1.address}");
  print("admin: ${admin1.id}, ${admin1.email}, ${admin1.department}");
  // print('Admin address: ${admin1.address} ') lỗi biên dịch  không thể truy cập thuộc tính từ 1 add min
}
