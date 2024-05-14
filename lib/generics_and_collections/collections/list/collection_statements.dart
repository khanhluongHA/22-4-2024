//Collection statements là một cú pháp giúp tạo và cập nhập
//các collections 1 cách dễ dàng và gọn gàng
// các loại Collection statements trong dart:
// 1. List Literals: sử dụng dấu ngoặc vuông
import 'package:flutter/material.dart';

var numbers = [1, 23, 4, 5, 6, 7];
var fruits = ['apple', 'banana', 'orange'];
// 2. Set Literals: sử dụng dấu ngoặc nhọn
var uniqueNumbers = {1, 2, 3, 4, 5, 6};
// và cái này nó sẽ loại bỏ các phần tử trùng lặp
var uniqueFruits = {'apple', 'banana', 'potato', 'apple'};
// var uniqueFruits = {'apple', 'banana', 'potato'};
// 3. Map Literals: sử dụng cú pháp {key: value}
var scores = {'alice': 90, 'jhin': 30, 'moganna': 40};
// 4. Spread Operator(toán tử spread('...' được sử dụng để giải nén các collections)):
var firstList = [1, 2, 3];
var secondList = [4, 5, 6];
var combinedList = [
  ...firstList,
  ...secondList
]; //[1,2,3,4,5,6]; (danh sách kết hợp)
// 5. Collection If:
var condition = true;
var number = [1, 2, 3, if (condition) 5, 6];
// 6. Collection For: để tạo ra các phần tử từ 1 danh sách
var numberFor = [for (var i = 0; i < 5; i++) i];
// numberFor sẽ chứa [0,1,2,3,4];
var doubleNumber = [for (var num in numberFor) num * 2];
// double number sẽ chứa[0,2,4,6,8];

// ví dụ tổng quát
class Product {
  final String name;
  final double price;
  Product(this.name, this.price);
  @override
  String toString() {
    return '$name: \$${price.toStringAsFixed(2)}';
  }
}

// tỉnh tổng giá trị sản phẩm
double calculateTotalValue(List<Product> products) {
  double totalValue = 0;
  for (var product in products) {
    totalValue += product.price;
  }
  return totalValue;
}

// lọc sản phẩm có giá cao hơn 1000
List<Product> filterExpensiveProducts(
    List<Product> products, double threshold) {
  List<Product> expensiveProduct = [];
  for (var product in products) {
    if (product.price > threshold) {
      expensiveProduct.add(product);
    }
  }
  return expensiveProduct;
}

void productListing() {
  var products = [
    Product('laptop', 1200),
    Product('phone', 500),
    Product('tablet', 800),
  ];
  print('tổng giá trị của các sản phẩm là: ');
  var totalValue = calculateTotalValue(products);
  print('\$${totalValue.toStringAsFixed(2)}');
  print('các sản phẩm cao hơn 1000 là: ');
  var expensiveProduct = filterExpensiveProducts(products, 1000);
  expensiveProduct.forEach(print);
}

// Implementation dùng để định nghĩa và triển khai các lớp, sử dụng
// trong thư viện API, tạo và sử dụng hàm, sử lý điều kiện logic, vòng lặp và nhiều hơn nữa
// 1. triển khai 1 lớp
class MyClass {
  int myMethod(int a, int b) {
    return a + b;
  }
}

// 2.Triển khai 1 hàm,
int sum(int a, int b) {
  return a + b;
}

// 3. sử dụng điều kiện logic
// if else
// 4. sử dụng vòng lặp
void firs() {
  int a;
  for (var i = 0; i < 10; i++) {
    print(i);
  }
}

// 5. sử dụng biểu thức
// int x, y, z;
// var result = x + y * z;
