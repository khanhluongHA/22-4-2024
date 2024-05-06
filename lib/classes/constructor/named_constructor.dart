// ignore_for_file: public_member_api_docs, sort_constructors_first
// ví dụ

class Point {
  int? x;// cái này là thuộc tính
  int? y;
  Point(this.x, this.y);
  // named constructor được đặt tên là "origin"
  Point.origin() {
    x = 0;
    y = 0;
  }
  Point.fromCoords(int x, int y) {
    this.x = x;
    this.y = y;
  }
  Point.fromJson(Map<String, dynamic> json) {
    x = json['x'];
    y = json['y'];
  }

  @override
  String toString() => 'Point(x: $x, y: $y)'; // cái này gọi la 1 phương thức
  //phương thức này có nhiệm vụ chuyển các thuộc tính thành dạng String để khi nào muốn print thì nó hiện đc
}
 // class có 2 cái là thuộc tính và phương thức


void keyInformation() {
  var originPoint = Point.origin(); // sử dụng name constructor "origin"
  var origin1 = Point.fromCoords(5, 10); // sử dụng name constructor"fromCoords"
  var origin2 = Point.fromJson({'x': 10, 'y': 30});
  print('Origin point: ${originPoint.toString()}');
  print('Point1: ${origin1.toString()}');
  print('origin2: ${origin2.toString()}');
}

// ví dụ khác
class BankAccounts {
  String owner;
  double balance;

  BankAccounts.newAccount(this.owner, this.balance);
  BankAccounts.deposit(this.owner, double amount) : balance = amount;

  void printAccounts() {
    print('owner: $owner');
    print('Balance: $balance');
  }
}

void inputAccount() {
  var surplus = BankAccounts.newAccount('luong', 1000);
  var transferMoney = BankAccounts.deposit('luong', 2000);
  print('principal: ');
  surplus.printAccounts();
  print('deposits: ');
  transferMoney.printAccounts();
}

class Car {
  String brand;
  String model;
  int year;
  double price;
  Car(
      {this.brand = 'honda',
      this.model = 'accent',
      this.price = 85000000,
      this.year = 2020});
  defaultCar() {
    brand = 'toyota';
    model = 'Corolla';
    year = 2022;
    price = 20000.0;
  }

  @override
  String toString() {
    return 'Car(brand: $brand, model: $model, year: $year, price: $price)';
  }
}