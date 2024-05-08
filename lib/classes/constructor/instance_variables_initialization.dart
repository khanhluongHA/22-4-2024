class Sums {
  int a;
  int b;
  int sum;
  // biến thành viên là sum
  Sums(this.a, this.b) : sum = a + b;
  void total() {
    sum = a + b;
  }
}

void printTotal() {
  var sums = Sums(10, 20);
  print('sum = ${sums.sum}');
  sums.a = 30;
  sums.b = 100;
  sums.total();
  print('new sum = ${sums.sum}');
}
