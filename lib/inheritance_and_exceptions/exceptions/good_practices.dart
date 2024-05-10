import 'package:flutter_tutorial/variables_and_data_types/variable/variable_basis.dart';

class Product {
  String productId;
  String productName;
  double price;
  double quantity;
  Product(this.productId, this.productName, this.price, this.quantity);
  void updatePrice(double newPrice) {
    if (newPrice >= 0) {
      price = newPrice;
    } else {
      throw Exception('Giá thành không hợp lệ');
    }
  }

  void updateQuantity(double newQuantity) {
    if (newQuantity >= 0) {
      quantity = newQuantity;
    } else {
      throw Exception('số lượng không hợp lệ');
    }
  }

  @override
  String toString() {
    return 'Mã Sp: $productId, tên sản phẩm: $productName, giá sản phẩm: $price, số lượng sản phẩm: $quantity';
  }
}

class Electronics extends Product {
  String brand;
  Electronics(String productId, String productName, double price,
      double quantity, this.brand)
      : super(productId, productName, price, quantity);
  void updateBrand(String newBrand) {
    brand = newBrand;
  }

  @override
  String toString() {
    return 'Mã sp: $productId, tên sp: $productName, giá: $price, số lượng: $quantity, nhãn hiệu: $brand';
  }
}

class Tool extends Product {
  String uses;
  String brand;
  Tool(String productId, String productName, double price, double quantity,
      this.uses, this.brand)
      : super(productId, productName, price, quantity);
  void updateUse(String newUse) {
    uses = newUse;
  }

  void updateBrand(String newBrand) {
    brand = newBrand;
  }

  @override
  String toString() {
    return 'mã sp: $productId, tên sp: $productName, giá sản phẩm: $price, số lượng: $quantity, công dụng: $uses, thương hiệu: $brand';
  }
}

void printProduct() {
  try {
    var phone = Electronics('PH101', 'Smartphone', 300, 100, 'Apple');
    print(phone);
    phone.updatePrice(199.99);
    // print(phone);
    phone.updateQuantity(300);
    // print(phone);
    phone.updateBrand('samsung');
    print(phone);
    var washingMachine =
        Tool('Ph456', 'Máy giặt', 300.00, 200, 'Giặt quần áo', 'panasonic');
    print(washingMachine);
    washingMachine.updateUse('rửa bát');
    washingMachine.updatePrice(100.00);
    print(washingMachine);
    washingMachine.updateBrand('Honda');
    print(washingMachine);
  } catch (e) {
    print('lỗi: $e');
  }
}
