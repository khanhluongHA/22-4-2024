// get ter là phương thức trả về 1 thuộc tính
// ví dụ
class Person {
  late String _name;
  String get name {
    return _name;
  }
}

// getter là một phương thức được sử dụng để gán giá trị cho một thuộc tính
// ví dụ
class Persons {
  late String _name;
  set name(String value) {
    _name = value;
  }
}

// thực hành
// 1.Kiểm tra điều kiện trước khi gán giá trị
class Circle {
  late double _radius;

  set radius(double value) {
    if (value > 0) {
      _radius = value;
    } else {
      print('Radius must be greater than zero');
    }
  }

  double get radius => _radius;
}

void printCircle() {
  var circle = Circle();
  circle.radius = 5;
  print(circle.radius);
}

// tính toán dựa trên các thuộc tính khác
class Rectangle {
  late double _length;
  late double _width;

  set length(double value) {
    _length = value;
  }

  set width(double value) {
    _width = value;
  }

  double get area => _length * _width;
}

void printRectangle() {
  var rectangle = Rectangle();
  rectangle.length = 5;
  rectangle.width = 4;
  print(rectangle.area);
}

// ẩn hoặc bảo vệ các thuộc tính
class BankAccount {
  double _balance = 0;
  double get balance => _balance;
  void deposit(double amount) {
    _balance += amount;
  }

  void withdraw(double amount) {
    if (amount > _balance) {
      throw ArgumentError('Insufficient funds');
    } else {
      _balance -= amount;
    }
  }
}

void printBank() {
  var account = BankAccount();
  account.deposit(1000);
  print(account.balance);
  account.withdraw(600);
  print(account.balance);
}

// thực hiện các hoạt động phức tạp
class Temperature {
  late double _celsius;
  set celsius(double value) {
    if (value < -273.15) {
      throw ArgumentError('Temperature cannot be below absolute zero');
    } else {
      _celsius -= value;
    }
  }

  double get celsius => _celsius;
  double get fahrenheit => _celsius * 9 / 5 + 32;
  double get kevin => _celsius + 273.15;
}

void printTemperature() {
  var temp = Temperature();
  temp.celsius = 10;
  print('celsius: ${temp.celsius}, fahrenheit: ${temp.fahrenheit}, kevin: ${temp.kevin}');
}
