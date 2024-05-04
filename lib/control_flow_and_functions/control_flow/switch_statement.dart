// xem thứ ngày tháng trong tuần

enum DayOfWeek {
  Monday,
  Tuesday,
  Wednesday,
  Thursday,
  Friday,
  Saturday,
  Sunday
}

void checkDays() {
  DayOfWeek day = DayOfWeek.Monday;
  switch (day) {
    case DayOfWeek.Monday:
      print("Today is Monday");
      break;
    case DayOfWeek.Tuesday:
      print("Today is Tuesday");
      break;
    case DayOfWeek.Wednesday:
      print("Today is Wednday");
      break;
    case DayOfWeek.Thursday:
      print("Today is Thursday");
      break;
    case DayOfWeek.Friday:
      print("Today is Friday");
    case DayOfWeek.Saturday:
      print("Today is Saturday");
      break;
    case DayOfWeek.Sunday:
      print("Today is Sunday");
      break;
    default:
      print("Invalid day");
  }
}

// xem lịch
void monthYear() {
  int month = 2;
  int year = 2026;
  print("Tháng đã nhập: $month, năm đã nhập: $year");
  switch (month) {
    case 1:
    case 3:
    case 5:
    case 7:
    case 8:
    case 10:
    case 12:
      print("có 31 ngày");
    case 4:
    case 6:
    case 11:
      print("tháng có 30 ngày");
    case 2:
      if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) {
        print("tháng: $month có 29 ngày");
      } else {
        print(" năm: $year có 28 ngày");
      }
    default:
      print("không hợp lệ");
  }
}

// integers
// - biểu thức có điều kiện
void checkMarks() {
  int marks = 80;
  if (marks >= 60) {
    print("passed");
  } else {
    print("false");
  }
}

// - biểu thức chuyển từ chuỗi sang integers
void ageAsString() {
  String string = "30";
  int convertedAge = int.parse(string);
  print(convertedAge);
}

// - chuyển đổi từ integers sang chuỗi
void stringAsAge() {
  int numberA = 10;
  String stringA = numberA.toString();
  print(stringA);
}

// sử dụng trong List and map
void application() {
  // List<int> numbers = [1, 2, 3, 4, 5];
  Map<String, int> studenAge = {
    "Hieu": 20,
    "Vinh": 30,
    "Ngoc": 20,
  };
  print(studenAge);
}

// Tính tổng các số từ 1 đến 100 bằng for
void sum() {
  int sum = 0;
  for (var i = 0; i < 100; i++) {
    sum += i;
  }
  print("tổng các số từ 1 đến 100 là: $sum");
}
