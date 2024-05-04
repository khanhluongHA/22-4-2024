// vòng lặp for
// lặp qua một list
import 'dart:io';

void stringCount() {
  List<int> number = [1, 2, 3, 4, 5];
  for (var i = 0; i < number.length; i++) {
    print(number[i]);
  }
}

// lặp từ 1 đến 10
void intFor() {
  for (var i = 0; i <= 10; i++) {
    print(i);
  }
}

// lặp chuỗi
void stringFor() {
  String name = "Luong";
  for (var i = 0; i < name.length; i++) {
    print(name[i]);
  }
}

// lặp lại từ 1-10;
void forInt() {
  for (var i = 10; i >= 1; i--) {
    print(i);
  }
}
// vòng lặp for_in

void stringForIn() {
  List<String> fruits = ["apple", "banana", "potato"];
  for (var fruit in fruits) {
    print(fruit);
  }
}

// tìm số lớn nhất trong danh sách
void intMax() {
  List<int> numbers = [12, 31, 45, 22, 53, 15];
  int numberMax = numbers[0];
  for (var i = 0; i < numbers.length; i++) {
    if (numberMax <= numbers[i]) {
      numberMax = numbers[i];
    }
  }
  print("số lớn nhất là: $numberMax");
}

// kiểm tra số nguyên tố
void prime() {
  int a = 4;
  bool isPrime = true;
  for (var i = 2; i <= a ~/ 2; i++) {
    if (a % i == 0) {
      isPrime = false;
      break;
    }
  }
  if (isPrime) {
    print("là số nguyên tố");
  } else {
    print("không phải số nguyên tố");
  }
}

void triangle() {
  stdout.write("nhập số hàng của tam giác");
  int rowCount = int.parse(stdin.readLineSync()!);
  for (var i = 1; i < rowCount; i++) {
    for (var j = 0; j <= i; j++) {
      stdout.write("*");
    }
    stdout.writeln();
  }
}

// vòng lặp while sẽ không thực hiện nếu điều kiện sai từ đầu
// vòng lặp do while sẽ thực hiện ít nhất 1 lần kể cả điều kiện sai
void whiles() {
  var i = 0;
  while (i < 10) {
    print(i);
    i++;
  }
}

void doWhile() {
  int count = 0;
  do {
    print(count);
    count++;
  } while (count < 10);
}

// break and continue
// break
void stop() {
  for (var i = 0; i < 10; i++) {
    if (i == 5) {
      break;
    }
    print(i);
  }
}

// continue
void run() {
  for (var i = 0; i < 10; i++) {
    if (i == 2) {
      continue;
    }
    print(i);
  }
}

/// for_in_loop

void forInString() {
  List<String> languages = ['C', 'C++', 'Dart', 'Java', 'python'];
  for (var language in languages) {
    print(language);
  }
}

// lặp qua một map
void forInMap() {
  Map<String, int> ageAndName = {
    "hahha": 12,
    "huhuuh": 13,
    "hiihihi": 17,
  };
  for (var ageAndNames in ageAndName.keys) {
    print(ageAndNames);
  }
}

// lặp qua một biến iterable khác
void other() {
  Iterable<int> numbers = [1, 2, 3, 4, 5, 6].map((e) => e * 2);
  for (var number in numbers) {
    print(number);
  }
}

