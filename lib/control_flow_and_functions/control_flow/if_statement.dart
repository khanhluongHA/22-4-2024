void student() {
  String studentName = "Lương";
  List<double> grades = [7.5, 8.6, 4.5, 9.2];
  double sum = 0;
  for (var grade in grades) {
    sum += grade;
  }
  double averageGrade = sum / grades.length;
  print("điểm trung bình của sinh viên $studentName là: $averageGrade");
  if (averageGrade >= 8) {
    print("$studentName học sinh giỏi");
  } else {
    print("$studentName không đạt loại giỏi");
  }
}
