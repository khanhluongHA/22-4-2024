class Car {
  late String _model;
  String get models => _model;

//(_). là là kí hiệu cho private(trường riêng tư);
  set models(String models) {
    if (models != null && models.isNotEmpty) {
      _model = models;
    } else {
      print('Invalid model');
    }
  }

  void displayInfo() {
    print('Car model: $models');
  }
}

void printCar() {
  var myCar = Car();
  // đặt model thông qua set
  myCar.models = 'toyota';

  // truy cập model thông qua get
  print('My car model: ${myCar.models}');
  // gọi phương thức cộng đồng
  myCar.displayInfo();
}

// bankAccount
class BankAccount {
  late String _accountNumber;
  double _balance = 0;
  

  String get accountNumber => _accountNumber;

  set accountNumber(String accountNumber) {
    if (accountNumber.length == 10) {
      _accountNumber = accountNumber;
    } else {
      throw ArgumentError('Account number must be 10 charter long');
    }
  }

  double get balance => _balance;
  // gửi tiền
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('$amount deposited successfully');
    } else {
      print('deposit failed');
    }
  }

  // rút tiền
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print('$amount withdraw successfully');
    } else {
      print('withdraw failed');
    }
  }
}

void personalAccount() {
  var accounts = BankAccount();
  // đặt số tài khoản
  try {
    accounts.accountNumber = '1234567890';
    print('account number: ${accounts.accountNumber}');
  } catch (e) {
    print(e);
  }

  accounts.deposit(1000);
  accounts.withdraw(500);
  print('Current balance: ${accounts._balance}');
}
