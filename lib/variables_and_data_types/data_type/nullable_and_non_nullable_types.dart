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
int number = 0;
// print("$number"); nó sẽ trả về giá trị 0;

String? name = "ronaldo";
String? elementName = name?[0]; // in ra "M";

String? fruit;
String? elementFruit = fruit?[0]; // in ra null;

// toán tử !
String? nullableString = "hehehehehe";
String nonNullableString =
    nullableString!; // sử dụng toán tử này để bỏ qua giá trị null của nullableString

// toán tử as

