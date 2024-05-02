// Nullable and Non-nullable types

//1. các loại không biên dịch
import 'dart:async';

import 'package:flutter_tutorial/variables_and_data_types/data_type/string.dart';

String myNames = "ronaldo";
void checkName() {
  if (myNames != null) {
    print(myNames);
  }
}

// check null
int? value;

// Print("$value"); trường hợp này nó sẽ trả về null vì value không có giá trị
int number = 10;
// print("$number"); nó sẽ trả về giá trị 10;

String? name = "em pa pe";
String? elementName = name?[0]; // in ra "e";

String? fruit;
String? elementFruit = fruit?[0]; // in ra null;

// toán tử !
String? nullableString = "hehehehehe";
String nonNullableString =
    nullableString!; // sử dụng toán tử này để bỏ qua giá trị null của nullableString
// toán tử as
// làm tròn
void rounding() {
  double? pi;
  double number1 = 10.3;
  double number2 = 11.5;
  final round1 = number1.round();
  final round2 = number2.round();
  final round3 = pi?.round();
  print(round1);
  print(round2);
  print(round3);
}
