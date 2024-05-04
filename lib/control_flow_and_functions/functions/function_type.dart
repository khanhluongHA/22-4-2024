import 'package:flutter/material.dart';

void sayHello() {
  print("hello world");
}

void export() {
  Function greeting;

  greeting = sayHello;
  greeting();
}

// hàm đơn giản
// hàm được tham số hóa
num sum(num x, num y) {
  return x + y;
}

void index() {
  print(sum(4, 5));
}

// viết kiểu ngắn hơn
num core(num a, num b) =>
    a * b; // dấu mũi tên nó sẽ thay cho return và viết kiểu này sẽ nhanh hơn
void coreAB() {
  // ignore: avoid_print
  print(core(4, 3));
}

// gọi hàm

void newSum() {
  print("value of y+z:");
}

num newSumZEndY(num y, num z) => y + z;
void valueSum() {
  var result = newSumZEndY(7, 19);
  newSum();
  print(result);
}

// gọi hàm trong hàm
num square(num numberA) => numberA * numberA;
void coreA() {
  var resultCore = square(9);
  print(resultCore);
}

num squareSum(num numberA, num numberB) => square(numberA) + square(numberB);
void resultSum() {
  var resultSums = squareSum(2, 2);
  print(resultSums);
}

// thông số không bắt buộc
/// sẽ có 2 kiểu tham số bắt buộc và tham số không bắt buộc
/// tên được đặt trong tham số
printer(num n, {String? s1, String? s2}) {
  print(n);
  print(s1);
  print(s2);
}

void printEx() {
  printer(20, s1: "Khánh Lương");
}

// positional parameters (Vị trí thông số)
String mysteryMessage(String who, [String? what, String? where]) {
  var message = '$who';
  if (what != null && where == null) {
    message = '$message said $what';
  } else if (where != null) {
    message = '$message said $what at $where';
  }
  return message;
}

void resultMessage() {
  var resultMessages = mysteryMessage('Lương', 'vinh');
  print(resultMessages);
}

// hàm đệ quy (na ná với giai thừa)
int factorial(int x) {
  if (x == 1) {
    return x;
  } else {
    return x * factorial(x - 1);
  }
}

void factorialResult() {
  var factorialResults = factorial(3);
  print(factorialResults);
}
// function nâng cao

List<int> forAll(int Function(int) f, List<int> intList) {
  List<int> newList = [];
  for (var i = 0; i < intList.length; i++) {
    newList.add(f(intList[i]));
  }
  return newList;
}

int factorials(int x) {
  if (x == 1) {
    return x;
  } else {
    return x * factorial(x - 1);
  }
}

void resultFactorial() {
  var tester = [1, 2, 3];
  var resultFactorials = forAll(factorials, tester);
  print(tester);
  print(resultFactorials);
}

// foreach
void forEach() {
  var test = [1, 23, 5, 4];
  test.forEach(print);
}
