void compare() {
  int age = 17;
  if (age > 18) {
    print('bạn đã đủ tuổi');
  } else
    (print('bạn chưa đủ tuổi'));
}

void course() {
  int age = 25;
  String educationLeve = "university";
  double monney = 30000;
  if (age > 18 && educationLeve == "college" && monney >= 25000) {
    print("đủ trình để đăng kí khóa học");
  } else {
    print("không đủ để đăng kí khóa học");
  }
}
