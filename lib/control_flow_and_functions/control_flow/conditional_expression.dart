// ví dụ
void checkMotorBike() {
  String? nameMotorbike;
  String fullNameMotorbike = nameMotorbike ?? "unKnown";
  print("full name: $fullNameMotorbike");
}

void customer() {
  int points = 30;
  String customerType;
  customerType = points >= 100
      ? "Khách hàng vàng"
      : points >= 50
          ? "khách hàng bạc"
          : "khách hàng thông thường";
  print("loại khách hàng: $customerType");
}
// Good practices

void client() {
  // thông tin khách hàng
  int age = 20;
  double distance = 100;
  int bookingHouse = 8;
  // giá vé
  double ticketPrice = 0.0;
  if (age < 5 || age >= 65) {
    ticketPrice = 0.0;
  } else if (age >= 5 && age < 18) {
    // giảm giá 50%
    ticketPrice = ticketPrice * 0.5;
  } else {
    if (distance <= 10 && bookingHouse >= 6 && bookingHouse <= 10) {
      // giảm giá 20%
      ticketPrice = ticketPrice * 0.2;
    } else if (distance > 10 && distance <= 20) {
      ticketPrice = 5;
    } else {
      ticketPrice = distance * 0.3;
    }
  }
  print("giá vé là: $ticketPrice");
}
