class Multiply {
  int factor;
  Multiply(this.factor);
  // định nghĩa phương thức call
  int call(int value) {
    return factor * value;
  }
}

void printFactor() {
  var multyplyBy2 = Multiply(2); // tạo 1 đối tượng callable class
  print(multyplyBy2(5)); // gọi đối tượng
}
