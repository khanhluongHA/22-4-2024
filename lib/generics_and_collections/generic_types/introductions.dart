// List<T> là List duy nhất có thể làm việc với mọi kiểu dữ liệu: List<int>
// List<String>, List<double>
// ví dụ:

import 'dart:ffi';

class List<T> {
  List<T> _items = [] as List<T>;

  void add(T item) {
    _items.add(item);
  }

  int getByIndex(int index) {
    if (index >= 0 && index < _items.length) {
      return _items.length;
    } else {
      throw RangeError('index out of range');
    }
  }

  int get length {
    return _items.length;
  }
}

void printInt() {
  var intList = List<int>();
  intList.add(1);
  intList.add(2);
  intList.add(3);
  var stringList = List<String>();
  stringList.add('hello');
  stringList.add('word');
  print(intList.getByIndex(0));
  print(stringList.getByIndex(1));
}

// ví dụ khác
class Pair<T, U> {
  T flirts;
  U second;
  Pair(this.flirts, this.second);

  @override
  String toString() {
    return '($flirts, $second)';
  }
}

// tạo kiểu
void makingStyle() {
  var pair1 = Pair(1, 'Hello');

  var pair2 = Pair(3.14, true);

  print(pair1);
  print(pair2);
}

// ví dụ khác
class Calculator<T extends num> {
  num add(T a, T b) {
    return a + b;
  }
}

void sumNum() {
  var intCalculator = Calculator<int>();
  var doubleCalculator = Calculator<double>();

  var sumOfIntegers = intCalculator.add(3, 4);
  var sumOfDouble = doubleCalculator.add(5.6, 4.4);

  print(sumOfIntegers);
  print(sumOfDouble);
}
