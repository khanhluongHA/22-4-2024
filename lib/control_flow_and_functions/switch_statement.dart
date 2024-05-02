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
